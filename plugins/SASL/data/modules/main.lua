print("Ilyushin 62M by Project Ilyushin")
print("Lua version is", _VERSION)
xpver = globalProperty("sim/version/xplane_internal_version")
registered = true -- Product registration, true because freeware

--//timer
createGlobalPropertyf("il62/frame_time", 0);

include("declare_datarefs.lua")

components = {
    declare_datarefs {},
    timelogic {},
    gauges {},
}