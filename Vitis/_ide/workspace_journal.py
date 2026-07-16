# 2026-07-16T17:51:51.672365600
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="phasemeter")
comp.build()

