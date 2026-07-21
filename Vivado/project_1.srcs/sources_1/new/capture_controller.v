`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2026 13:55:03
// Design Name: 
// Module Name: capture_controller
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


module capture_controller //#(parameter integer CAPTURE_LENGTH = 500000)
(
    input  wire clk,
    input  wire rst,
    
    // Количество измерений
    input  wire [31:0] sample_count,

    // Асинхронный внешний триггер
    input  wire trigger_async,

    // Импульс = одно успешно принятое слово
    input  wire sample_accepted,

    output reg  capture_enable,
    output reg  capture_done,
    output reg  busy,

    // Однотактный импульс для формирования TLAST
    output reg  last_sample
);

    //----------------------------------------------------------
    // Synchronizer
    //----------------------------------------------------------

    reg trig_ff1;
    reg trig_ff2;

    always @(posedge clk)
    begin
        if (rst)
        begin
            trig_ff1 <= 1'b0;
            trig_ff2 <= 1'b0;
        end
        else
        begin
            trig_ff1 <= trigger_async;
            trig_ff2 <= trig_ff1;
        end
    end

    wire trigger_rise;

    assign trigger_rise = trig_ff1 & ~trig_ff2;

    //----------------------------------------------------------
    // FSM
    //----------------------------------------------------------

    localparam IDLE    = 2'd0;
    localparam CAPTURE = 2'd1;
    localparam DONE    = 2'd2;

    reg [1:0] state;

    reg [31:0] sample_counter;

    always @(posedge clk)
    begin

        if(rst)
        begin

            state          <= IDLE;

            capture_enable <= 1'b0;
            capture_done   <= 1'b0;
            busy           <= 1'b0;

            sample_counter <= 32'd0;

            last_sample    <= 1'b0;

        end
        else
        begin

            capture_done <= 1'b0;
            last_sample  <= 1'b0;

            case(state)

            //--------------------------------------------------
            // IDLE
            //--------------------------------------------------

            IDLE:
            begin

                busy           <= 1'b0;
                capture_enable <= 1'b0;
                sample_counter <= 32'd0;

                if(trigger_rise)
                begin
                    state          <= CAPTURE;
                    busy           <= 1'b1;
                    capture_enable <= 1'b1;
                end

            end

            //--------------------------------------------------
            // CAPTURE
            //--------------------------------------------------

            CAPTURE:
            begin

                if(sample_accepted)
                begin

                    sample_counter <= sample_counter + 1'b1;

                    // Последний отсчёт
                    //if(sample_counter == CAPTURE_LENGTH-2)
                    if(sample_counter == sample_count-2)
                    begin

                        last_sample    <= 1'b1;

                        capture_enable <= 1'b0;
                        capture_done   <= 1'b1;
                        busy           <= 1'b0;

                        state <= DONE;

                    end

                end

            end

            //--------------------------------------------------
            // DONE
            //--------------------------------------------------

            DONE:
            begin
                state <= IDLE;
            end

            default:
                state <= IDLE;

            endcase

        end

    end

endmodule
