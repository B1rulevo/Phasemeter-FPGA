`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2026 14:41:50
// Design Name: 
// Module Name: adc_sample
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


module adc_sample (
    input  wire        adc_clk_i,
    input  wire [11:0] adc_data_i,

    output reg [11:0] adc_data_o,
    output reg [31:0] sample_count_o
);

always @(posedge adc_clk_i)
begin
    adc_data_o     <= adc_data_i;
    sample_count_o <= sample_count_o + 1;
end

endmodule