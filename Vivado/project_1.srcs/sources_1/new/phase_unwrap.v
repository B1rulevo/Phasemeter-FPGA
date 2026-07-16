`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2026 13:03:41
// Design Name: 
// Module Name: phase_unwrap
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


module phase_unwrap #
(
    parameter PHASE_WIDTH = 24,
    parameter OUT_WIDTH   = 32
)
(
    input  wire                           clk,
    input  wire                           rst,

    input  wire                           s_valid,
    input  wire signed [PHASE_WIDTH-1:0]  s_phase,

    output reg                            m_valid,
    output reg signed [OUT_WIDTH-1:0]     m_phase
);

//------------------------------------------------------
// Полный диапазон фазового кода
//------------------------------------------------------

localparam signed [OUT_WIDTH-1:0] FULL_SCALE = 32'sd16777216;
//    (1 <<< PHASE_WIDTH);

//------------------------------------------------------
// Порог обнаружения скачка
//------------------------------------------------------

// Пока оставим параметром.
// Для 24-битного CORDIC AMD обычно потом подберем экспериментально.

localparam signed [PHASE_WIDTH:0] THRESH = 32'sd6588397;
//(1 <<< (PHASE_WIDTH-1));

//------------------------------------------------------

reg signed [PHASE_WIDTH-1:0] phase_prev;
reg signed [OUT_WIDTH-1:0]   offset;

//------------------------------------------------------

wire signed [PHASE_WIDTH:0] dphi;

assign dphi =
    $signed({s_phase[PHASE_WIDTH-1],s_phase}) -
    $signed({phase_prev[PHASE_WIDTH-1],phase_prev});

//------------------------------------------------------

wire signed [OUT_WIDTH-1:0] phase_ext =
{
    {(OUT_WIDTH-PHASE_WIDTH){s_phase[PHASE_WIDTH-1]}},
    s_phase
};

//------------------------------------------------------

reg signed [OUT_WIDTH-1:0] offset_next;

//------------------------------------------------------

always @*
begin

    offset_next = offset;

    if (dphi > THRESH)
        offset_next = offset - FULL_SCALE;

    else if (dphi < -THRESH)
        offset_next = offset + FULL_SCALE;

end

//------------------------------------------------------

always @(posedge clk)
begin

    if (rst)
    begin

        phase_prev <= 0;
        offset     <= 0;

        m_phase    <= 0;
        m_valid    <= 0;

    end
    else
    begin

        m_valid <= s_valid;

        if (s_valid)
        begin

            phase_prev <= s_phase;

            offset <= offset_next;

            m_phase <= phase_ext + offset_next;

        end

    end

end

endmodule