connect -url tcp:127.0.0.1:3121
source E:/Xilinx/zynq/Workspace_Starter_Kit/Project04_Uboot/project_1.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB II 0000146ce8e101"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Platform Cable USB II 0000146ce8e101" && level==0} -index 1
fpga -file E:/Xilinx/zynq/Workspace_Starter_Kit/Project04_Uboot/project_1.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB II 0000146ce8e101"} -index 0
loadhw -hw E:/Xilinx/zynq/Workspace_Starter_Kit/Project04_Uboot/project_1.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB II 0000146ce8e101"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB II 0000146ce8e101"} -index 0
dow E:/Xilinx/zynq/Workspace_Starter_Kit/Project04_Uboot/project_1.sdk/DDR3_Test/Debug/DDR3_Test.elf
configparams force-mem-access 0
bpadd -addr &main
