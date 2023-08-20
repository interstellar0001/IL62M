print("Ilyushin 62M by Project Ilyushin")
print("Lua version is", _VERSION)
xpver = globalProperty("sim/version/xplane_internal_version")
registered = true -- Product registration, true because freeware

--//timer
createGlobalPropertyf("il62/frame_time", 0);

sasl.options.set3DRendering(true)
sasl.options.setAircraftPanelRendering(true)
sasl.options.setInteractivity(true)
sasl.options.setRenderingMode2D(SASL_RENDER_2D_MULTIPASS)

addSearchPath(moduleDirectory .. "/Custom Module/electrical")
addSearchPath(moduleDirectory .. "/Custom Module/apu")

components = {
    functions {},
    declare_datarefs {},
    timelogic {},
    gauges {},
    electrical_bat {},
    dc_logic {},
    ac_logic {},
    apu_system {},
}