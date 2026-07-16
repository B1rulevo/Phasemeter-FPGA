
//------------------------------------------------------------------------------
// (c) Copyright 2023 Advanced Micro Devices. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "design_1_fir_compiler_0_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: 0,0,0,1,1,2,2,3,4,6,7,9,11,13,15,18,20,24,27,31,35,39,44,49,54,59,65,72,78,85,92,100,108,116,124,132,141,150,159,168,177,186,195,204,213,221,230,238,246,254,262,269,275,281,287,292,297,301,305,307,310,311,312,313,312,311,310,307,305,301,297,292,287,281,275,269,262,254,246,238,230,221,213,204,195,186,177,168,159,150,141,132,124,116,108,100,92,85,78,72,65,59,54,49,44,39,35,31,27,24,20,18,15,13,11,9,7,6,4,3,2,2,1,1,0,0,0
// chanpats: 173
// name: design_1_fir_compiler_0_0
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 6
// num_coeffs: 127
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 18
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 24
// data_fract_width: 0
// output_rounding_mode: 4
// output_width: 24
// output_fract_width: 0
// config_method: 0

const double design_1_fir_compiler_0_0_coefficients[127] = {0,0,0,1,1,2,2,3,4,6,7,9,11,13,15,18,20,24,27,31,35,39,44,49,54,59,65,72,78,85,92,100,108,116,124,132,141,150,159,168,177,186,195,204,213,221,230,238,246,254,262,269,275,281,287,292,297,301,305,307,310,311,312,313,312,311,310,307,305,301,297,292,287,281,275,269,262,254,246,238,230,221,213,204,195,186,177,168,159,150,141,132,124,116,108,100,92,85,78,72,65,59,54,49,44,39,35,31,27,24,20,18,15,13,11,9,7,6,4,3,2,2,1,1,0,0,0};

const xip_fir_v7_2_pattern design_1_fir_compiler_0_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_design_1_fir_compiler_0_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "design_1_fir_compiler_0_0";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &design_1_fir_compiler_0_0_coefficients[0];
  config.coeff_padding       = 6;
  config.num_coeffs          = 127;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 18;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = design_1_fir_compiler_0_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 24;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_CONVERGENT_EVEN;
  config.output_width        = 24;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config design_1_fir_compiler_0_0_config = gen_design_1_fir_compiler_0_0_config();

