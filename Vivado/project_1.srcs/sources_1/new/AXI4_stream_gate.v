`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2026 14:04:29
// Design Name: 
// Module Name: AXI4_stream_gate
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


module axis_stream_gate
(
    input  wire         aclk,
    input  wire         aresetn,

    // управление
    input  wire         capture_enable,
    input  wire         last_sample,

    output wire         sample_accepted,

    //=============================
    // Slave AXI4-Stream (от CIC)
    //=============================

    input  wire [31:0]  s_axis_tdata,
    input  wire         s_axis_tvalid,
    output wire         s_axis_tready,

    //=============================
    // Master AXI4-Stream (к FIFO)
    //=============================

    output wire [31:0]  m_axis_tdata,
    output wire         m_axis_tvalid,
    input  wire         m_axis_tready,
    output wire         m_axis_tlast,
    output wire [3:0]   m_axis_tkeep
);

    //------------------------------------------------------
    // Пока запись запрещена -
    // всегда принимаем данные от CIC и выбрасываем их.
    //------------------------------------------------------

    assign s_axis_tready = capture_enable ? m_axis_tready : 1'b1;
    assign m_axis_tvalid = capture_enable ? s_axis_tvalid : 1'b0;

    //------------------------------------------------------

    assign m_axis_tdata  = s_axis_tdata;

    assign m_axis_tkeep  = 4'hF;

    assign m_axis_tlast = capture_enable & last_sample;

    //------------------------------------------------------

    assign sample_accepted = capture_enable & s_axis_tvalid & s_axis_tready;

endmodule
