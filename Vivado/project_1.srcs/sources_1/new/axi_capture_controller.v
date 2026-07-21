`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2026 14:28:41
// Design Name: 
// Module Name: axi_capture_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// axis_capture_controller.v
// Контроллер захвата данных по AXI4-Stream с внешним триггером.
// FPGA Vivado 2024.2, Verilog-2001.

module axis_capture_controller #(
    parameter integer DATA_WIDTH     = 32   // ширина данных в битах
    //parameter integer CAPTURE_LENGTH = 500000  // количество слов захвата
)(
    input  wire                aclk,            // основной такт
    input  wire                aresetn,         // сброс (активный LOW)
    
    input  wire [31:0]         sample_count,  // Количество точек

    // Асинхронный внешний триггер
    input  wire                trigger_async,

    // Статусные выходы
    output reg                 capture_done,    // «1» при окончании захвата (одно такт.)
    output reg                 busy,            // «1» во время захвата
    output reg                 capture_enable,  // разрешение передачи слов (для подсветки или др.)

    // Slave AXI4-Stream интерфейс (от CIC)
    input  wire [DATA_WIDTH-1:0] s_axis_tdata,   // входные данные
    input  wire                s_axis_tvalid,   // входной TVALID (CIC)
    output wire                s_axis_tready,   // входной TREADY (внутр. готовность)
    // (TKEEP/TSTRB считаем неизменяемыми или не используем)

    // Master AXI4-Stream интерфейс (к FIFO/DMA)
    output reg [DATA_WIDTH-1:0] m_axis_tdata,   // выходные данные
    output reg                m_axis_tvalid,   // выходной TVALID
    input  wire                m_axis_tready,   // входной TREADY (FIFO)
    output reg                m_axis_tlast,    // выходной TLAST
    output reg [DATA_WIDTH/8-1:0] m_axis_tkeep  // выходной TKEEP (всегда all-1)
);

    // Кодировка состояний FSM
    localparam [1:0]
        ST_IDLE    = 2'd0,
        ST_ARMED   = 2'd1,
        ST_CAPTURE = 2'd2,
        ST_DONE    = 2'd3;

    reg [1:0]  state;          // текущее состояние FSM
    reg [31:0] capture_length; // сохранение длины записи
    reg [31:0]  remaining;     // оставшиеся слова до конца захвата

    // Синхронизация внешнего триггера (двухфлиповый синхронизатор)
    reg trig_sync0, trig_sync1;
    wire trigger_edge;
    always @(posedge aclk) begin
        if (!aresetn) begin
            trig_sync0 <= 1'b0;
            trig_sync1 <= 1'b0;
        end else begin
            trig_sync0 <= trigger_async;
            trig_sync1 <= trig_sync0;
        end
    end
    // Обнаруживаем фронт триггера
    assign trigger_edge = trig_sync0 && ~trig_sync1;

    // Внутренний буфер-«skid» (одноступенчатый)
    reg               m_valid_reg; // флаг, что данные во внутреннем регистре готовы к выходу
    reg [DATA_WIDTH-1:0] m_data_reg;
    reg               m_last_reg;

    // s_axis_tready = 1, когда мы в состоянии захвата и внутренняя очередь пуста
    assign s_axis_tready = ((state == ST_ARMED) || (state == ST_CAPTURE)) && !m_valid_reg;

    // Инициализация постоянного TKEEP
    initial m_axis_tkeep = {DATA_WIDTH/8{1'b1}};

    // Основная логика FSM и передачи
    always @(posedge aclk) begin
        if (!aresetn) begin
            // Сброс: возвращаем в IDLE и обнуляем регистры
            state         <= ST_IDLE;
            remaining     <= 32'd0;
            m_valid_reg   <= 1'b0;
            m_data_reg    <= {DATA_WIDTH{1'b0}};
            m_last_reg    <= 1'b0;
            m_axis_tvalid <= 1'b0;
            m_axis_tlast  <= 1'b0;
            busy          <= 1'b0;
            capture_done  <= 1'b0;
            capture_enable<= 1'b0;
        end else begin
            // По умолчанию снимаем флаг capture_done (одноразовый импульс)
            capture_done <= 1'b0;

            // Если данные выведены (m_axis_tready=1 при валидности), очищаем буфер
            if (m_valid_reg && m_axis_tready) begin
                m_valid_reg <= 1'b0;
                m_last_reg  <= 1'b0;
            end

            case (state)
                ST_IDLE: begin
                    busy <= 1'b0;
                    capture_enable <= 1'b0;
                    // Переход по фронту триггера
                    if (trigger_edge) begin
                        capture_length <= sample_count; // Сохраняем длину записи
                        state <= ST_ARMED;
                    end
                end

                ST_ARMED: begin
                    busy <= 1'b1;
                    capture_enable <= 1'b1;
                    // Ждём первое слово (s_axis_tready уже =1)
                    if (s_axis_tvalid && s_axis_tready) begin
                        // Приём первого слова
                        if (capture_length == 1) begin
                            // Захват единственного слова
                            m_valid_reg <= 1'b1;
                            m_data_reg  <= s_axis_tdata;
                            m_last_reg  <= 1'b1;
                            remaining   <= 32'd0;
                            state       <= ST_DONE;
                        end else begin
                            // Не последний, продолжаем захват
                            m_valid_reg <= 1'b1;
                            m_data_reg  <= s_axis_tdata;
                            m_last_reg  <= 1'b0;
                            remaining   <= capture_length - 1;
                            state       <= ST_CAPTURE;
                        end
                    end
                end

                ST_CAPTURE: begin
                    busy <= 1'b1;
                    capture_enable <= 1'b1;
                    // Ждём следующие слова
                    if (s_axis_tvalid && s_axis_tready) begin
                        if (remaining == 1) begin
                            // Последнее слово
                            m_valid_reg <= 1'b1;
                            m_data_reg  <= s_axis_tdata;
                            m_last_reg  <= 1'b1;
                            remaining   <= 32'd0;
                            state       <= ST_DONE;
                        end else begin
                            // Промежуточное слово
                            m_valid_reg <= 1'b1;
                            m_data_reg  <= s_axis_tdata;
                            m_last_reg  <= 1'b0;
                            remaining   <= remaining - 1;
                            // Остаёмся в ST_CAPTURE
                        end
                    end
                end

                ST_DONE: begin
                    // Выход из захвата: однократный импульс capture_done
                    busy <= 1'b0;
                    capture_enable <= 1'b0;
                    capture_done <= 1'b1;
                    state <= ST_IDLE;
                end
            endcase

            // Выводим регистровые данные на внешние сигналы AXI
            m_axis_tvalid <= m_valid_reg;
            m_axis_tdata  <= m_data_reg;
            m_axis_tlast  <= m_last_reg;
        end
    end

endmodule