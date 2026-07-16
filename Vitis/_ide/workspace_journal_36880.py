<<<<<<< HEAD
# 2026-07-15T15:17:29.445045800
=======
<<<<<<< HEAD
# 2026-07-16T13:52:37.251402400
=======
# 2026-07-15T15:17:29.445045800
>>>>>>> aac182e0ab2b0caa38cdb8d008622b1e96199c6a
>>>>>>> e68592546f2b6959f2e58fe3ec76f663cd25691d
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

<<<<<<< HEAD
platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="phasemeter",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")
=======
<<<<<<< HEAD
platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="phasemeter")
comp.build()

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

client.delete_component(name="app_component")
=======
platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="phasemeter",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")
>>>>>>> aac182e0ab2b0caa38cdb8d008622b1e96199c6a
>>>>>>> e68592546f2b6959f2e58fe3ec76f663cd25691d

status = platform.build()

comp = client.get_component(name="phasemeter")
comp.build()

<<<<<<< HEAD
=======
<<<<<<< HEAD
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa")

status = platform.build()

=======
>>>>>>> aac182e0ab2b0caa38cdb8d008622b1e96199c6a
>>>>>>> e68592546f2b6959f2e58fe3ec76f663cd25691d
status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

<<<<<<< HEAD
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa")
=======
<<<<<<< HEAD
status = platform.build()

comp.build()
=======
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa")

status = platform.build()
>>>>>>> aac182e0ab2b0caa38cdb8d008622b1e96199c6a

status = platform.build()

comp.build()

<<<<<<< HEAD
status = platform.build()

comp.build()
=======
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa")

status = platform.build()
>>>>>>> aac182e0ab2b0caa38cdb8d008622b1e96199c6a

status = platform.build()

comp.build()

<<<<<<< HEAD
status = platform.build()
>>>>>>> e68592546f2b6959f2e58fe3ec76f663cd25691d

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform2",hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform2")
status = platform.build()

status = platform.build()

<<<<<<< HEAD
=======
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

=======
platform = client.create_platform_component(name = "platform2",hw_design = "$COMPONENT_LOCATION/../../Vivado/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform2")
status = platform.build()

status = platform.build()

>>>>>>> aac182e0ab2b0caa38cdb8d008622b1e96199c6a
>>>>>>> e68592546f2b6959f2e58fe3ec76f663cd25691d
status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

<<<<<<< HEAD
client.delete_component(name="platform")
=======
<<<<<<< HEAD
status = platform.build()

comp.build()
=======
client.delete_component(name="platform")
>>>>>>> aac182e0ab2b0caa38cdb8d008622b1e96199c6a
>>>>>>> e68592546f2b6959f2e58fe3ec76f663cd25691d

platform = client.get_component(name="platform")
status = platform.build()

vitis.dispose()

