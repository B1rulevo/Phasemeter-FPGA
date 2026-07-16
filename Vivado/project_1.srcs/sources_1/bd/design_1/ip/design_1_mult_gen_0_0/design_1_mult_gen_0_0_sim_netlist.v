// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jul  2 15:52:35 2026
// Host        : DESKTOP-DBG01T0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_mult_gen_0_0 -prefix
//               design_1_mult_gen_0_0_ design_1_mult_gen_0_0_sim_netlist.v
// Design      : design_1_mult_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_0,mult_gen_v12_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_22,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_0_0
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
  design_1_mult_gen_0_0_mult_gen_v12_0_22 U0
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
+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
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
