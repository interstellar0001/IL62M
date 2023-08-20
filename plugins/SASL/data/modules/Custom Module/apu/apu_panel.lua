defineProperty("apu_main_switch", globalPropertyf("il62/electr/apu/main"))
defineProperty("apu_start_mode", globalPropertyf("il62/electr/apu/start_mode"))
defineProperty("apu_air_bleed", globalPropertyf("il62/electr/apu/bleed_switch"))
defineProperty("apu_start", globalPropertyf("il62/electr/apu/start"))
defineProperty("apu_stop", globalPropertyf("il62/electr/apu/stop"))


defineProperty("apu_rpm", globalPropertyf("il62/electr/apu/apu_rpm"))
defineProperty("apu_egt_gau", globalPropertyf("il62/electr/apu/apu_egt"))
defineProperty("apu_oil_temp", globalPropertyf("il62/electr/apu/apu_oiltemp"))

defineProperty("low_oil_press", globalPropertyf("il62/lights/apu/low_oil_press"))
defineProperty("high_temp", globalPropertyf("il62/lights/apu/high_temp"))
defineProperty("high_rpm", globalPropertyf("il62/lights/apu/high_rpm"))
defineProperty("pta6_fail", globalPropertyf("il62/lights/apu/tsa6_fail"))
defineProperty("doors_open", globalPropertyf("il62/lights/apu/doors_open"))
defineProperty("fuel_press", globalPropertyf("il62/lights/apu/fuel_press"))
defineProperty("start_ready", globalPropertyf("il62/lights/apu/start_ready"))

defineProperty("apu_n1", globalPropertyf("il62/electr/apu/apu_n1"))
defineProperty("apu_oil_t", globalPropertyf("il62/electr/apu/apu_oiltemp"))
defineProperty("apu_oil_q", globalPropertyf("il62/electr/apu/apu_oilquantity"))
defineProperty("apu_oil_p", globalPropertyf("il62/electr/apu/apu_oilpress"))
defineProperty("apu_egt", globalPropertyf("il62/electr/apu/apu_egt"))
defineProperty("apu_air_press", globalPropertyf("il62/electr/apu/apu_airpress"))
defineProperty("apu_air_doors", globalPropertyf("il62/electr/apu/apu_airdoors"))
defineProperty("apu_fuel_p", globalPropertyi("il62/electr/apu/start_sequence"))

defineProperty("apu_start_bus", globalPropertyf("il62/electr/apu/apu_start_bus"))
defineProperty("apu_start_cc", globalPropertyf("il62/electr/apu/apu_start_cc"))
defineProperty("apu_start_seq", globalPropertyf("il62/apu/start_sequence"))

defineProperty("bus27_volt_left", globalPropertyf("il62/electr/buses/dc_left_volt"))
defineProperty("bus27_volt_right", globalPropertyf("il62/electr/buses/dc_right_volt"))

defineProperty("outside_air_temp", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) 

defineProperty("test_lamps", globalPropertyi("il62/electr/apu/lamp_test"))

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))

defineProperty("frame_time", globalPropertyf("il62/frame_time"))

defineProperty("APU_generator_on", globalPropertyi("sim/cockpit2/electrical/APU_generator_on")) -- boolean	APU generator is turned on, 0 or 1.
defineProperty("APU_starter_switch", globalPropertyi("sim/cockpit2/electrical/APU_starter_switch")) -- boolean	APU power switch, 0 is off, 1 is on, 2 is start-er-up!
defineProperty("APU_N1_percent", globalPropertyi("sim/cockpit2/electrical/APU_N1_percent")) -- percent	N1 of the APU
defineProperty("APU_running", globalPropertyi("sim/cockpit2/electrical/APU_running")) -- boolean	APU actually running, 0 or 1.

defineProperty("acf_has_APU_switch", globalPropertyi("sim/aircraft/overflow/acf_has_APU_switch")) -- 
defineProperty("rel_APU_press", globalPropertyi("sim/operation/failures/rel_APU_press")) -- 
defineProperty("bleed_air_mode", globalPropertyi("sim/cockpit2/pressurization/actuators/bleed_air_mode")) -- Bleed air mode, 0=of, 1=left,2=both,3=right,4=apu,5=auto

defineProperty("local_x", globalPropertyf("sim/flightmodel/position/local_x")) -- position X
defineProperty("local_y", globalPropertyf("sim/flightmodel/position/local_y")) -- position Y
defineProperty("local_z", globalPropertyf("sim/flightmodel/position/local_z")) -- position Z

defineProperty("view_x", globalPropertyf("sim/graphics/view/view_x")) -- camera position X
defineProperty("view_y", globalPropertyf("sim/graphics/view/view_y")) -- camera position Y
defineProperty("view_z", globalPropertyf("sim/graphics/view/view_z")) -- camera position Z

defineProperty("apu_start_fail", globalPropertyi("il62/failures/apu_start_fail"))
defineProperty("apu_gen_fail", globalPropertyi("il62/failures/apu_gen_fail"))
defineProperty("apu_runtime", globalPropertyf("il62/failures/apu_runtime"))
defineProperty("apu_fail_oilt", globalPropertyi("il62/failures/apu_oilt_fail"))
defineProperty("apu_fail_egt", globalPropertyi("il62/failures/apu_egt_fail"))
defineProperty("apu_fail_fuel_left", globalPropertyi("il62/failures/apu_fuel_left_fail"))
defineProperty("apu_fail", globalPropertyi("il62/failures/apu_fail"))
defineProperty("apu_press_fail", globalPropertyi("il62/failures/apu_press_fail"))

local switcher_sound = loadSample('metal_switch.wav')
local button_sound = loadSample('plastic_btn.wav')

include("smooth_light.lua")

local passed = get(frame_time)


local function default_APU()
	set(rel_APU_press, 0)
	set(acf_has_APU_switch, 1)
	set(APU_generator_on, 1)
	set(bleed_air_mode, 4)
	-- start APU if it's not running
	if (get(APU_running) ~= 1 or get(APU_N1_percent) < 50) and (get(bus27_volt_left) > 10 or get(bus27_volt_right) > 10) then
		set(APU_starter_switch, 2)
	elseif get(bus27_volt_left) > 10 or get(bus27_volt_right) > 10 then
		set(APU_starter_switch, 1)
	else set(APU_starter_switch, 0)
	end
end

local n1_table_start = {{ -5000, 0},    -- bugs workaround
				  { 0, 0 },
				  { 8, 0 },   --
				  { 12, 15 },   --
				  { 14, 5 },   --
				  { 16, 18 },   --
				  { 18, 15 },   --
				  { 20, 20 },   --
				  { 110, 110 },  -- 
          		  { 1000, 110 }}   -- bugs workaround

local n1_table_off = {{ -5000, 0},    -- bugs workaround
				  { 0, 0 },
				  { 110, 110 },  -- 
          		  { 1000, 110 }}   -- bugs workaround

local n1_actual = 0
local EGT_actual = 0
local oil_t_actual = -60

local function gauges()
	local n1_angle = 0
	local EGT_angle = 0
	local oil_t_angle = -60
	local n1 = get(apu_n1)
	if n1 > n1_actual then n1_angle = interpolate(n1_table_start, n1) -- if starting, add needle trembling
	else n1_angle = interpolate(n1_table_off, n1) end
	EGT_angle = get(apu_egt)

	if EGT_angle < -10 then EGT_angle = -10 end

	if get(bus27_volt_right) > 13 then
		oil_t_angle = get(apu_oil_t)
	else
		oil_t_angle = -75
	end

	--n1_angle = 99
	--EGT_angle = 300
	--oil_t_angle = 100

	-- set smooth movements
	n1_actual = n1_actual + (n1_angle - n1_actual) * passed * 5
	EGT_actual = EGT_actual + (EGT_angle - EGT_actual) * passed * 3
	oil_t_actual = oil_t_actual + (oil_t_angle - oil_t_actual) * passed * 3

	-- set results
	set(apu_rpm, n1_actual)
	set(apu_egt_gau, EGT_actual)
	set(apu_oil_temp, oil_t_actual)

end

local apu_main_last = get(apu_main_switch)
local apu_start_mod_last = get(apu_start_mode)
local apu_air_last = get(apu_air_bleed)
local apu_start_last = get(apu_start)
local apu_stop_last = get(apu_stop)
local test_lamps_last = get(test_lamps)

local function check_controls()

	local apu_main_sw = get(apu_main_switch)
	local apu_start_mod_sw = get(apu_start_mode)
	local apu_air_sw = get(apu_air_bleed)
	local apu_start_but = get(apu_start)
	local apu_stop_but = get(apu_stop)
	local test_lamps_but = get(test_lamps)

	local changes_sw = apu_main_sw + apu_start_mod_sw + apu_air_sw - apu_main_last - apu_start_mod_last - apu_air_last
	local changes_but = apu_start_but + apu_stop_but + test_lamps_but - apu_start_last - apu_stop_last - test_lamps_last

	if changes_sw ~= 0 then  end
	if changes_but ~= 0 then  end

	apu_main_last = apu_main_sw
	apu_start_mod_last = apu_start_mod_sw
	apu_air_last = apu_air_sw
	apu_start_last = apu_start_but
	apu_stop_last = apu_stop_but
	test_lamps_last = test_lamps_but
end

local low_oil_press_sign = 0
local high_temp_sign = 0
local high_rpm_sign = 0

local start_ready_brt = 0
local t = 0

local function lamps()

	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 0.8
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night

	-- local variables
	local rpm = get(apu_n1)
	local start_seq = get(apu_start_seq) == 1
	local thermo = get(apu_egt)
	local main_sw = get(apu_main_switch) == 1

	-- red signs. resets only after disabling APU switcher
	if get(apu_oil_p) < 1 then low_oil_press_sign = 1 end
	if (start_seq and thermo > 700) or (not start_seq and thermo > 570) then high_temp_sign = 1 end
	if rpm > 105 then high_rpm_sign = 1 end

	-- reset red signs
	if not main_sw then
		low_oil_press_sign = 0
		high_temp_sign = 0
		high_rpm_sign = 0
	end

	local low_oil_brt = 0
	if get(apu_oil_q) < 0.4 then low_oil_brt = 1 end


	low_oil_brt = math.max(low_oil_brt * lamps_brt, test_btn) * math.max(math.fmod(sasl.getCurrentCycle() * 0.01, 1), 1.0)

	set(low_oil, smooth_light(low_oil_brt, get(low_oil)))

	local low_oil_press_brt = math.max(low_oil_press_sign * lamps_brt, test_btn)
	set(low_oil_press, smooth_light(low_oil_press_brt, get(low_oil_press)))

	local high_temp_brt = math.max(high_temp_sign * lamps_brt, test_btn)
	set(high_temp, smooth_light(high_temp_brt, get(high_temp)))

	local high_rpm_brt = math.max(high_rpm_sign * lamps_brt, test_btn)
	set(high_rpm, smooth_light(high_rpm_brt, get(high_rpm)))

	local pta6_fail_brt = math.max(0, test_btn) -- TODO: implement PTA-6
	set(pta6_fail, smooth_light(pta6_fail_brt, get(pta6_fail)))

	local doors_open_brt = 0
	if get(apu_doors) > 0.9 then doors_open_brt = 1 end
	doors_open_brt = math.max(doors_open_brt * lamps_brt, test_btn)
	set(doors_open, smooth_light(doors_open_brt, get(doors_open)))

    local doors_closed_brt = 0
    if get(apu_doors) < 0.9 then doors_closed_brt = 1 end
	doors_closed_brt = math.max(doors_closed_brt * lamps_brt, test_btn)
	set(doors_closed, smooth_light(doors_closed_brt, get(doors_closed)))

	local fuel_press_brt = 0
	if get(apu_fuel_p) > 0.8 then fuel_press_brt = 1 end
	fuel_press_brt = math.max(fuel_press_brt * lamps_brt, test_btn)
	set(fuel_press, smooth_light(fuel_press_brt, get(fuel_press)))


	if get(apu_air_doors) == 0 and get(apu_doors) == 1 then start_ready_brt = 1 end
	if get(apu_air_doors) == 1 or get(apu_doors) < 0.9 then start_ready_brt = 0 end
	local start_ready_lit = math.max(start_ready_brt * lamps_brt, test_btn)
	set(start_ready, smooth_light(start_ready_lit, get(start_ready)))

	local work_mode_brt = 0
	if rpm > 92 and main_sw then work_mode_brt = 1 end
	work_mode_brt = math.max(work_mode_brt * lamps_brt, test_btn)
	set(work_mode, smooth_light(work_mode_brt, get(work_mode)))

	local start_apu_brt = 0
	if rpm < 92 and get(gear_vent_set) == 1 then start_apu_brt = 1 end
	start_apu_brt = math.max(start_apu_brt * lamps_brt, test_btn) -- вентиляция щасси и когда ВСУ выклчюено.
	set(start_apu, smooth_light(start_apu_brt, get(start_apu)))

end