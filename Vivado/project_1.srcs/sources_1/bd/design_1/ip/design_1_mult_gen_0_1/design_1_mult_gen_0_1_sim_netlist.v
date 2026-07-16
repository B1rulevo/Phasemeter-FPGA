// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jul  2 15:52:35 2026
// Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_mult_gen_0_1 -prefix
//               design_1_mult_gen_0_1_ design_1_mult_gen_0_0_sim_netlist.v
// Design      : design_1_mult_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_0,mult_gen_v12_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_22,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_0_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 24}" *) output [23:0]P;

  wire [11:0]A;
  wire [11:0]B;
  wire CLK;
  wire [23:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_mult_gen_0_1_mult_gen_v12_0_22 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sDj9kl3EWw2hBIWMdrQEHWoDUkkkjl5SDK8LyF1D7T6FD5kEH34F0YTnGuwo0RU4bcskDhO9JeH1
bIuPyvB3SpQkIxbIWJo3rH/dXKkmYACCnCw4wz6JX9F9ZKK+yPCuoVN6Z3wDkqWc7bU7uUQHUOHv
nqlWULaO+0JDdlmWw8g=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rbdI4v6AcOgKhl1So2ZU8yt/N+VGSqoQtMk5T305K2MFcb1u563HN1DrJ0IieQoW0qZbt1HOLSBL
7xcPm1LtM55H+QR3KL15u+Tnwk/UCP8qxoSY2oCyFdNyar5IjHtkbnkt0/UG8QI9IFhMTmPFCpzI
W37skpgWpmTDfIeeSZitQ5m2S7mtH578R33HjsXlsd+BCcc0KKOG9pHcAAvv5EKwikiMdpcchFcx
09tTf+nsY0jzC/Z70btCXVKBugPfMGfRJWvtsQVgoJKnnwMfcRl0nJsq3kzGkPvu4V5d6muxFAOu
iES/yyTVIFLfbYT3TZwcxMdHxfycIt1AIdMm2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZrZN5OQHXzZ4TXMTYRRKX3ciJ97vJF2WE78NM3SWBJu8arwEZ77LavA1ok75gyTAIzvB82uPmv8s
eyd6NvnfyXr77Zajva41IwBQ8tDPr8Vb/nPLGxh7BbpQvLv6mErqWWpcRpqBeE8aON+YN2zcEgGP
VRRzgASy426M02fa6LA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s56W6QNQ2+LT+WbHKrZmYhaQfQP2Hh5NpkRTjB5k8wpbHSSznMUl0Wfj+c2M8V2xfsX+3uTjN2wX
5doxdzY21zH3fF471BiRjJqlVCBwKEdvt88qqzHbPDaqVgcRawV6M5VchDPS+z229WFwkSz9ap/N
3GBRjH4h7X/60K6mABgv/xCcl37HQqoac7u4AArIx1LAziai9xFkpCWBfnsZXa5TK/3nkQgyrpoP
WcFM+BhLsvRsK2WkFyqyI3LRPn3CE9r2pzMytJaHS2aq2YfzAsxYDHV8BbaX/r5Xa2RabbVlCKpI
V1dx7nWdhVhyg+2gMlANIeb6TCZhbwIN7QktGA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P+w2Uyg9fAd9uaiQTsdw0/vhb9w11Es0yam6UVLuVY4AQ4xhFkep5zMPsXjKq2fRR7i8yp5k+E2n
AtExg+z4ofi/mVedHwGLHqUk0sqGAxc09djAh6WTokQqBPCp7JeTYgHj7iGSzA+qjK2Rocvn+SxI
OLQTM/xe9GYaY3+WSEDVrpawBrMrKiMU0Ifzihh6oja1MWib5WqW6/d1DXFY7nZFcwr8fPV+FX2n
y6ocJz6ZzxFr8LW+/P6HDwvI/yJo0OATNRSkEsI4FuP6Yu3YeC9Ju1UBjFg845tLdHoqOJMT5YeI
IYQxdalv3/LbjI5CIwX5bLeU2Hxi8Koyd/S8BA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZyAq5EFFXN4VhAygUi5Pm/LTi7UEgrt4og1QkEAIuyY91Eiye+RCwy3o+oCX1sQeLRhArnYr2bq
Z1sGmg+sdobAxhh6Ud13kmSMWxu8gq22Nq15drWxoA2Xin/B2ZTlKQqhWtlD+Bytr+6ltr/ThsyP
d/gNwSPIv1Ky22pMa4HcklADZZlSK+8sFRckSLKpnwNRON0uDiq8OF8WoE1GIECpylgSO5sSrlZa
dKRoEEqT2hLDY8FV9aO4/EbKwvaTWGS8PI5ExjH92zjs50izXUm4CUWpHVZwFLqinR1epbSXQI7O
JvFqqzCJ3I4s6eJh7EmmQSIGlb4+S0DHabHz8w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BudHvAUQqcRSC8njGx+qSAYakH+T5KXLJCCm8C0ZGsXosa3yAGFT4tYDvnmk/lPn0/lmoseiIlSg
VZiRXKFKPuQ0/RXPHtx/mRPm74QTrWBYoG/85M/Z+FTr4Sx0VxpOxuzEStooECaLSxGCdtgiSKg9
MgtPgurbvW+9dOoZ5yqWr667czVSZ+YBTJtqZlezyI4KPnD7GKINgz0xRVJaposuVeKGEQBTZgTx
PiRJWGQdaov9olsvie3s4VFIIUtzf2S8X4LP0HtX+n3jU9jJfYLePj+oz/olffRBNg0D9xBr5akV
RAIAthPPIRzVuRevWKxHoBnNa4hovMRVRd7Reg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eGdUlDqP3dCbugGoi4jHs59JA09U4Bha56+iJlfYrUzjpyZIjXuEgzR0ebAhWk2/R/dfFgOphBh1
rB1/GhQLTpQwbuJTBXjejQQ5Eo7/TNq6/sQll4oAAGbCxy0S6dYePo0evJKHEd34AwDr0AzmYfwb
v7kyoake83PVliRHVbA4ZgcaV6NAcPA/BoVnkKW4FqsRNYvrPQjMM5Qd7QyTm+4iXH44VWzvYAfa
zcPxBOrbSTg1yTsW+lTxAvW7d81kpajkgSWim3VCIlZpNaaWQPTcTrWU/YV9oeahwEEGVqEiaLr2
9TXDZ2TQNiZhrd5KHsoCZhWEIGfK2D50sLc6hXmpxwwgbjHLEvgLgKyLEe1jn0LlaVwn2n9Nz22R
dje9GtSiJ16hpPVDY3DoFfzfqH3sctYIw5ZdPtvnYEPhLjssSncznB0c4rcwCuWzXeEamT7vZ434
e7LbwkU3sypQG+D2/GYQatqRNnPlo9McHD3iFV7NXIuKznuV4ZhwzHSe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OsFlphw2++UhaxOxJcVzQ4avzGMdpptevxemJlWm3X/wLMNZLLRk5BoxRx9xXXsqdWUscniRNMrn
M/MZ5WaC6uxxaRyPXpo4MGffUFSJ1K6/cQ9h5QhP3IObE+WUkWhtpSu5+Wsv907vdiJU/b2XqtvT
NAjU/6k9FylcS2i3+TzD07jwVLbGLJFEo5XGxIG25owtCzJ9ShRbu1gAvly5ISn2QVOyFCaJ/jx+
ah8L4XSjS3i+TjYSxKiisKux6XIv/jbUhTJiVek9TfZz9xgVYsjX18DUI5CNCFHZ9sXFJB1KAvy8
wDNEFWR+JkjTNXuuxfqto128tIti9d2J5jRI6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OLdxY4ySqFUYNMjqEdMK86NEdHB2eteUnWGVFMg/NwXIJdho4el+12s84CDUTAWBWDJzSEah+NkB
VquLI/xoG/qOYTiNkw3DrXl3p0reOgtohfwEa20Mvlto/YwNLWQWSZ3AeAD1TN+qthMlDA5QWIYK
IVHkvcLXmGs5D+i0N7iwGAp1DXSw5D7BsXf36wTOJP0uoQvaVCNBRRizqYUg8SuksUISX7EeFI8P
d0Y3gMlJcgQcR2X5AOpykC0wuj2ZNof1prkIddoAcfwGbDNKNjLCvzbyxpDb1ysWTUPTuTJuBUum
A+X3EdbhR6dNwzzvVQpW5OGZZZrVwxI58h+Jig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2PpqmeUr5R9ynsDkvl5shSPXj+QrvDWY/Cv6ceapckBufOOE8Opq6BWNcnfvQTx5VP6hsiWQj0T
kO9rMh1rPnwp4ur9P66sDDt7l0wt/TmD86kEYVzHpMphledbN7RBhShmosHrjMSgdaIJ+EcoNgEw
CMYlnrKajUDjv94G8Su88FIadzy3baapyNE6OWa29jZRUNDQavWY8SFTDQiV1kFqZhSYUlk1mcYT
eG1Izf486Zho/sEsCP/LmMTf50PQYDwBt3L5782Y4AsuLvLpF/tM5uFJdSSOixHldb1L/0DQXlZe
qTL0yCI1rcxPjMYyGyvr0Yz8iXl/PwtME6Rk7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5696)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sDj9kl3EWw2hBIWMdrQEHWoDUkkkjl5SDK8LyF1D7T6FD5kEH34F0YTnGuwo0RU4bcskDhO9JeH1
bIuPyvB3SpQkIxbIWJo3rH/dXKkmYACCnCw4wz6JX9F9ZKK+yPCuoVN6Z3wDkqWc7bU7uUQHUOHv
nqlWULaO+0JDdlmWw8g=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rbdI4v6AcOgKhl1So2ZU8yt/N+VGSqoQtMk5T305K2MFcb1u563HN1DrJ0IieQoW0qZbt1HOLSBL
7xcPm1LtM55H+QR3KL15u+Tnwk/UCP8qxoSY2oCyFdNyar5IjHtkbnkt0/UG8QI9IFhMTmPFCpzI
W37skpgWpmTDfIeeSZitQ5m2S7mtH578R33HjsXlsd+BCcc0KKOG9pHcAAvv5EKwikiMdpcchFcx
09tTf+nsY0jzC/Z70btCXVKBugPfMGfRJWvtsQVgoJKnnwMfcRl0nJsq3kzGkPvu4V5d6muxFAOu
iES/yyTVIFLfbYT3TZwcxMdHxfycIt1AIdMm2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZrZN5OQHXzZ4TXMTYRRKX3ciJ97vJF2WE78NM3SWBJu8arwEZ77LavA1ok75gyTAIzvB82uPmv8s
eyd6NvnfyXr77Zajva41IwBQ8tDPr8Vb/nPLGxh7BbpQvLv6mErqWWpcRpqBeE8aON+YN2zcEgGP
VRRzgASy426M02fa6LA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s56W6QNQ2+LT+WbHKrZmYhaQfQP2Hh5NpkRTjB5k8wpbHSSznMUl0Wfj+c2M8V2xfsX+3uTjN2wX
5doxdzY21zH3fF471BiRjJqlVCBwKEdvt88qqzHbPDaqVgcRawV6M5VchDPS+z229WFwkSz9ap/N
3GBRjH4h7X/60K6mABgv/xCcl37HQqoac7u4AArIx1LAziai9xFkpCWBfnsZXa5TK/3nkQgyrpoP
WcFM+BhLsvRsK2WkFyqyI3LRPn3CE9r2pzMytJaHS2aq2YfzAsxYDHV8BbaX/r5Xa2RabbVlCKpI
V1dx7nWdhVhyg+2gMlANIeb6TCZhbwIN7QktGA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P+w2Uyg9fAd9uaiQTsdw0/vhb9w11Es0yam6UVLuVY4AQ4xhFkep5zMPsXjKq2fRR7i8yp5k+E2n
AtExg+z4ofi/mVedHwGLHqUk0sqGAxc09djAh6WTokQqBPCp7JeTYgHj7iGSzA+qjK2Rocvn+SxI
OLQTM/xe9GYaY3+WSEDVrpawBrMrKiMU0Ifzihh6oja1MWib5WqW6/d1DXFY7nZFcwr8fPV+FX2n
y6ocJz6ZzxFr8LW+/P6HDwvI/yJo0OATNRSkEsI4FuP6Yu3YeC9Ju1UBjFg845tLdHoqOJMT5YeI
IYQxdalv3/LbjI5CIwX5bLeU2Hxi8Koyd/S8BA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZyAq5EFFXN4VhAygUi5Pm/LTi7UEgrt4og1QkEAIuyY91Eiye+RCwy3o+oCX1sQeLRhArnYr2bq
Z1sGmg+sdobAxhh6Ud13kmSMWxu8gq22Nq15drWxoA2Xin/B2ZTlKQqhWtlD+Bytr+6ltr/ThsyP
d/gNwSPIv1Ky22pMa4HcklADZZlSK+8sFRckSLKpnwNRON0uDiq8OF8WoE1GIECpylgSO5sSrlZa
dKRoEEqT2hLDY8FV9aO4/EbKwvaTWGS8PI5ExjH92zjs50izXUm4CUWpHVZwFLqinR1epbSXQI7O
JvFqqzCJ3I4s6eJh7EmmQSIGlb4+S0DHabHz8w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BudHvAUQqcRSC8njGx+qSAYakH+T5KXLJCCm8C0ZGsXosa3yAGFT4tYDvnmk/lPn0/lmoseiIlSg
VZiRXKFKPuQ0/RXPHtx/mRPm74QTrWBYoG/85M/Z+FTr4Sx0VxpOxuzEStooECaLSxGCdtgiSKg9
MgtPgurbvW+9dOoZ5yqWr667czVSZ+YBTJtqZlezyI4KPnD7GKINgz0xRVJaposuVeKGEQBTZgTx
PiRJWGQdaov9olsvie3s4VFIIUtzf2S8X4LP0HtX+n3jU9jJfYLePj+oz/olffRBNg0D9xBr5akV
RAIAthPPIRzVuRevWKxHoBnNa4hovMRVRd7Reg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eGdUlDqP3dCbugGoi4jHs59JA09U4Bha56+iJlfYrUzjpyZIjXuEgzR0ebAhWk2/R/dfFgOphBh1
rB1/GhQLTpQwbuJTBXjejQQ5Eo7/TNq6/sQll4oAAGbCxy0S6dYePo0evJKHEd34AwDr0AzmYfwb
v7kyoake83PVliRHVbA4ZgcaV6NAcPA/BoVnkKW4FqsRNYvrPQjMM5Qd7QyTm+4iXH44VWzvYAfa
zcPxBOrbSTg1yTsW+lTxAvW7d81kpajkgSWim3VCIlZpNaaWQPTcTrWU/YV9oeahwEEGVqEiaLr2
9TXDZ2TQNiZhrd5KHsoCZhWEIGfK2D50sLc6hXmpxwwgbjHLEvgLgKyLEe1jn0LlaVwn2n9Nz22R
dje9GtSiJ16hpPVDY3DoFfzfqH3sctYIw5ZdPtvnYEPhLjssSncznB0c4rcwCuWzXeEamT7vZ434
e7LbwkU3sypQG+D2/GYQatqRNnPlo9McHD3iFV7NXIuKznuV4ZhwzHSe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OsFlphw2++UhaxOxJcVzQ4avzGMdpptevxemJlWm3X/wLMNZLLRk5BoxRx9xXXsqdWUscniRNMrn
M/MZ5WaC6uxxaRyPXpo4MGffUFSJ1K6/cQ9h5QhP3IObE+WUkWhtpSu5+Wsv907vdiJU/b2XqtvT
NAjU/6k9FylcS2i3+TzD07jwVLbGLJFEo5XGxIG25owtCzJ9ShRbu1gAvly5ISn2QVOyFCaJ/jx+
ah8L4XSjS3i+TjYSxKiisKux6XIv/jbUhTJiVek9TfZz9xgVYsjX18DUI5CNCFHZ9sXFJB1KAvy8
wDNEFWR+JkjTNXuuxfqto128tIti9d2J5jRI6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OLdxY4ySqFUYNMjqEdMK86NEdHB2eteUnWGVFMg/NwXIJdho4el+12s84CDUTAWBWDJzSEah+NkB
VquLI/xoG/qOYTiNkw3DrXl3p0reOgtohfwEa20Mvlto/YwNLWQWSZ3AeAD1TN+qthMlDA5QWIYK
IVHkvcLXmGs5D+i0N7iwGAp1DXSw5D7BsXf36wTOJP0uoQvaVCNBRRizqYUg8SuksUISX7EeFI8P
d0Y3gMlJcgQcR2X5AOpykC0wuj2ZNof1prkIddoAcfwGbDNKNjLCvzbyxpDb1ysWTUPTuTJuBUum
A+X3EdbhR6dNwzzvVQpW5OGZZZrVwxI58h+Jig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2PpqmeUr5R9ynsDkvl5shSPXj+QrvDWY/Cv6ceapckBufOOE8Opq6BWNcnfvQTx5VP6hsiWQj0T
kO9rMh1rPnwp4ur9P66sDDt7l0wt/TmD86kEYVzHpMphledbN7RBhShmosHrjMSgdaIJ+EcoNgEw
CMYlnrKajUDjv94G8Su88FIadzy3baapyNE6OWa29jZRUNDQavWY8SFTDQiV1kFqZhSYUlk1mcYT
eG1Izf486Zho/sEsCP/LmMTf50PQYDwBt3L5782Y4AsuLvLpF/tM5uFJdSSOixHldb1L/0DQXlZe
qTL0yCI1rcxPjMYyGyvr0Yz8iXl/PwtME6Rk7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9120)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
