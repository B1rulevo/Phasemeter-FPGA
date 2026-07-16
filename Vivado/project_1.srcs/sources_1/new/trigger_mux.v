`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2026 15:01:17
// Design Name: 
// Module Name: trigger_mux
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


module trigger_mux
(
    input  wire clk,
    input  wire rst,

    input  wire trigger_select,     // 0 - внешний триггер, 1 - программный триггер
    input  wire ext_trigger,
    input  wire sw_trigger,

    // одноклоковый импульс
    output wire trigger_pulse
);

    //----------------------------------------------------------
    // Синхронизация внешнего триггера
    //----------------------------------------------------------

    reg ext_ff1;
    reg ext_ff2;

    always @(posedge clk)
    begin
        if (rst)
        begin
            ext_ff1 <= 1'b0;
            ext_ff2 <= 1'b0;
        end
        else
        begin
            ext_ff1 <= ext_trigger;
            ext_ff2 <= ext_ff1;
        end
    end

    wire ext_pulse;

    assign ext_pulse = ext_ff1 & ~ext_ff2;

    //----------------------------------------------------------
    // Синхронизация программного триггера
    //----------------------------------------------------------

    reg sw_ff1;
    reg sw_ff2;

    always @(posedge clk)
    begin
        if (rst)
        begin
            sw_ff1 <= 1'b0;
            sw_ff2 <= 1'b0;
        end
        else
        begin
            sw_ff1 <= sw_trigger;
            sw_ff2 <= sw_ff1;
        end
    end

    wire sw_pulse;

    assign sw_pulse = sw_ff1 & ~sw_ff2;

    //----------------------------------------------------------
    // Выбор источника
    //----------------------------------------------------------

    assign trigger_pulse = trigger_select ? sw_pulse : ext_pulse;

endmodule
