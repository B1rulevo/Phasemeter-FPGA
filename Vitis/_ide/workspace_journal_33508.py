# 2026-07-15T17:22:17.767811200
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

comp = client.get_component(name="phasemeter")
status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="lwip220", path="C:\Xilinx\Vitis\2024.2\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_1")

status = platform.build()

status = domain.set_config(option = "lib", param = "lwip220_temac_phy_link_speed", value = "CONFIG_LINKSPEED100", lib_name="lwip220")

status = domain.regenerate()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

