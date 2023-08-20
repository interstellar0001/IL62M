defineProperty("apu_gen_on", globalPropertyf("il62/electr/base/gen_apu_ac"))


--switches
defineProperty("gen_1_on", globalPropertyf("il62/electr/base/gen1_switch")) -- 0 off, 1 on
defineProperty("gen_2_on", globalPropertyf("il62/electr/base/gen2_switch")) -- 0 off, 1 on
defineProperty("gen_3_on", globalPropertyf("il62/electr/base/gen3_switch")) -- 0 off, 1 on
defineProperty("gen_4_on", globalPropertyf("il62/electr/base/gen4_switch")) -- 0 off, 1 on

defineProperty("bus27_rect1", globalPropertyf("il62/electr/base/rect1"))
defineProperty("bus27_rect2", globalPropertyf("il62/electr/base/rect2"))
defineProperty("bus27_rect3", globalPropertyf("il62/electr/base/rect3"))
defineProperty("bus27_rect4", globalPropertyf("il62/electr/base/rect4"))

defineProperty("bat1_on", globalPropertyf("il62/electr/base/bat1_switch")) -- 0 off, 1 on
defineProperty("bat2_on", globalPropertyf("il62/electr/base/bat2_switch")) -- 0 off, 1 on
defineProperty("bat3_on", globalPropertyf("il62/electr/base/bat3_switch")) -- 0 off, 1 on
defineProperty("bat4_on", globalPropertyf("il62/electr/base/bat4_switch")) -- 0 off, 1 on

--gauges
defineProperty("gen1_amp", globalPropertyf("il62/electr/gauges/gen1_amp"))
defineProperty("gen2_amp", globalPropertyf("il62/electr/gauges/gen2_amp"))
defineProperty("gen3_amp", globalPropertyf("il62/electr/gauges/gen3_amp"))
defineProperty("gen4_amp", globalPropertyf("il62/electr/gauges/gen4_amp"))

defineProperty("gen1_freq", globalPropertyf("il62/electr/gauges/gen1_hz"))
defineProperty("gen2_freq", globalPropertyf("il62/electr/gauges/gen2_hz"))
defineProperty("gen3_freq", globalPropertyf("il62/electr/gauges/gen3_hz"))
defineProperty("gen4_freq", globalPropertyf("il62/electr/gauges/gen4_hz"))

defineProperty("bus1_amp", globalPropertyf("il62/electr/gauges/115_1_amp"))
defineProperty("bus2_amp", globalPropertyf("il62/electr/gauges/115_2_amp"))
defineProperty("bus3_amp", globalPropertyf("il62/electr/gauges/115_3_amp"))
defineProperty("bus4_amp", globalPropertyf("il62/electr/gauges/115_4_amp"))

--timing
defineProperty("frame_time", globalPropertyf("il62/frame_time"))
defineProperty("sim_run_time", globalPropertyf("sim/time/total_running_time_sec"))

--sources
--27VDC
defineProperty("s_bat_volt_1", globalPropertyf("il62/electr/base/bat_volt_1"))
defineProperty("s_bat_volt_2", globalPropertyf("il62/electr/base/bat_volt_2"))
defineProperty("s_bat_volt_3", globalPropertyf("il62/electr/base/bat_volt_3"))
defineProperty("s_bat_volt_4", globalPropertyf("il62/electr/base/bat_volt_4"))
defineProperty("s_bat_amp_1", globalPropertyf("il62/electr/base/bat_amp_1"))
defineProperty("s_bat_amp_2", globalPropertyf("il62/electr/base/bat_amp_2"))
defineProperty("s_bat_amp_3", globalPropertyf("il62/electr/base/bat_amp_3"))
defineProperty("s_bat_amp_4", globalPropertyf("il62/electr/base/bat_amp_4"))
defineProperty("s_bat_amp_cc_1", globalPropertyf("il62/electr/base/bat_cc_1"))
defineProperty("s_bat_amp_cc_2", globalPropertyf("il62/electr/base/bat_cc_2"))
defineProperty("s_bat_amp_cc_3", globalPropertyf("il62/electr/base/bat_cc_3"))
defineProperty("s_bat_amp_cc_4", globalPropertyf("il62/electr/base/bat_cc_4"))

defineProperty("s_rect1_amp", globalPropertyf("il62/electr/base/rect1_amp"))
defineProperty("s_rect2_amp", globalPropertyf("il62/electr/base/rect2_amp"))
defineProperty("s_rect3_amp", globalPropertyf("il62/electr/base/rect3_amp"))
defineProperty("s_rect4_amp", globalPropertyf("il62/electr/base/rect4_amp"))

defineProperty("s_bus27_volt_left", globalPropertyf("il62/electr/buses/dc_left_volt"))
defineProperty("s_bus27_volt_right", globalPropertyf("il62/electr/buses/dc_right_volt"))

--115/200VAC
defineProperty("s_gen1_volt", globalPropertyf("il62/electr/base/gen1_volt"))
defineProperty("s_gen2_volt", globalPropertyf("il62/electr/base/gen2_volt"))
defineProperty("s_gen3_volt", globalPropertyf("il62/electr/base/gen3_volt"))
defineProperty("s_gen4_volt", globalPropertyf("il62/electr/base/gen4_volt"))
defineProperty("s_gen5_volt", globalPropertyf("il62/electr/base/gen5_volt"))
defineProperty("s_gen1_amp", globalPropertyf("il62/electr/base/gen1_amp"))
defineProperty("s_gen2_amp", globalPropertyf("il62/electr/base/gen2_amp"))
defineProperty("s_gen3_amp", globalPropertyf("il62/electr/base/gen3_amp"))
defineProperty("s_gen4_amp", globalPropertyf("il62/electr/base/gen4_amp"))
defineProperty("s_gen5_amp", globalPropertyf("il62/electr/base/gen5_amp"))

defineProperty("s_bus115_1_volt", globalPropertyf("il62/electr/buses/bus115_1_volt"))
defineProperty("s_bus115_2_volt", globalPropertyf("il62/electr/buses/bus115_2_volt"))
defineProperty("s_bus115_3_volt", globalPropertyf("il62/electr/buses/bus115_3_volt"))
defineProperty("s_bus115_4_volt", globalPropertyf("il62/electr/buses/bus115_4_volt"))
defineProperty("s_bus115_em_1_volt", globalPropertyf("il62/electr/buses/bus115_em_1_volt"))
defineProperty("s_bus115_em_2_volt", globalPropertyf("il62/electr/buses/bus115_em_2_volt"))

--lamps
defineProperty("lamp_apu_gen_on", globalPropertyf("il62/lights/eng/apu_gen"))
defineProperty("gen_fail_1", globalPropertyf("il62/lights/eng/gen_1_fail"))
defineProperty("gen_fail_2", globalPropertyf("il62/lights/eng/gen_2_fail"))
defineProperty("gen_fail_3", globalPropertyf("il62/lights/eng/gen_3_fail"))
defineProperty("gen_fail_4", globalPropertyf("il62/lights/eng/gen_4_fail"))
defineProperty("rect_fail_1", globalPropertyf("il62/lights/eng/rect_1_fail"))
defineProperty("rect_fail_2", globalPropertyf("il62/lights/eng/rect_2_fail"))
defineProperty("rect_fail_3", globalPropertyf("il62/lights/eng/rect_3_fail"))
defineProperty("rect_fail_4", globalPropertyf("il62/lights/eng/rect_4_fail"))

--engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]"))
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]"))
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]"))
defineProperty("eng4_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[3]"))

defineProperty("sim_avionics", globalPropertyi("sim/cockpit2/switches/avionics_power_on"))

include("smooth_light.lua")

local switcher_rotary_sound = loadSample("metal_switch.wav")
local cap_sound = loadSample("cap.wav")

local notLoaded = true

function interpolate(tbl, value)
    local lastActual = 0
    local lastReference = 0
    for _k, v in pairs(tbl) do
        if value == v[1] then
            return v[2]
        end
        if value < v[1] then
            local a = value - lastActual
            local m = v[2] - lastReference
            return lastReference + a / (v[1] - lastActual) * m
        end
        lastActual = v[1]
        lastReference = v[2]
    end
    return value - lastActual + lastReference
end

local function reset_switchers()
    if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 and get(eng4_N1) < 5 then
        set(gen_1_on, 0)
        set(gen_2_on, 0)
        set(gen_3_on, 0)
        set(gen_4_on, 0)
        set(bus27_rect1, 0)
        set(bus27_rect2, 0)
        set(bus27_rect3, 0)
        set(bus27_rect4, 0)
        set(bat1_on, 0)
        set(bat2_on, 0)
        set(bat3_on, 0)
        set(bat4_on, 0)
    end

    notLoaded = false
end 

local k1 = 50
local k2 = 200
local vlim = 20
local alim = 5

local amp115_table = {{ -5000, -120},    -- bugs workaround
				  { 0, -120 },   -- 
				  { 40, -100 },   -- 
            	  { 50,  -90 },   -- 
           		  { 100, -20 },    -- 
          		  { 110, 0 },  --  
				  { 145, 97 },  -- 
				  { 150, 120 },  -- 
          		  { 1000, 120 }}    -- bugs workaround

local volt115_actual = -120
local freq115_actual = -120
local passed = get(frame_time)

local gen1_timer = 0

function gen1