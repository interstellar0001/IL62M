--[[

    CREDITS: Felis TU154 for much of the battery logic here. I am incredible unexperienced in SASL so I used the open sourced SASLv3 TU154 as reference.

]]--

print("Loaded custom_modules/electrical/electrical_bat.lua!")

-- Battery specific datarefs
defineProperty("bat_on_bus", globalPropertyf("il62/electr/base/bat1_switch")) -- Battery switch
defineProperty("bat_source", globalPropertyf("il62/electr/base/bat1")) -- Battery source
defineProperty("bat_amp_bus", globalPropertyf("il62/electr/base/bat_amp_1")) -- Battery amps
defineProperty("bat_amp_cc", globalPropertyf("il62/electr/base/bat_cc_1")) -- Battery current
defineProperty("bat_volt_bus", globalPropertyf("il62/electr/base/bat_volt_1")) -- Battery voltage
defineProperty("bat_temp", globalPropertyf("il62/electr/base/bat_temp_1")) -- Battery temperature

defineProperty("bat_fail", globalPropertyi("il62/failures/bat_1_fail"))
defineProperty("bat_kz", globalPropertyi("il62/failures/bat_1_tru"))

defineProperty("bus_volt", globalPropertyf("il62/electr/buses/dc_left_volt"))

defineProperty("cockpit_temp", globalPropertyf("il62/other/thermals/cockpit_temp"))


-- System datarefs
defineProperty("frame_time", globalPropertyf("il62/frame_time"))
defineProperty("sim_bat_on", globalPropertyi("sim/cockpit/electrical/battery_on"))

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

local current_table = {{ -5000, 0},    -- bugs workaround
				  { 0, 0 },   -- 
				  { 600, 100 },   -- 
            	  { 1200, 500 },   -- 
           		  { 1800, 1000 },    -- 
          		  { 20000, 1000 }}   -- bugs workaround

local battery_key = 0
local bat_charge = 25 - math.random() * 1.5 -- A*H initial capacity, will be used for volt calcs
local BAT_CURRENT_COEF = 2 -- current that the batteries take when they charge per 1 A*h
local kz_timer = 0

kz_timer = 1 --0.0069 (i do not know if this is a joke or has a use but since idk better ill shut up here)

local temp = 20

battery_sound=loadSample("batteries.wav")

function update()
    local MAX_BAT_CAPACITY = 45 + get(cockpit_temp) -- 21 is normal in IL62. If temperature drops below -20°C the capacity starts to reduce
    if MAX_BAT_CAPACITY > 25 then
        MAX_BAT_CAPACITY = 25
    elseif MAX_BAT_CAPACITY < 0 then
        MAX_BAT_CAPACITY = 0
    end

    if bat_charge > MAX_BAT_CAPACITY then
        bat_charge = MAX_BAT_CAPACITY
    end

    local passed = get(frame_time)
    local bat_on = get(bat_on_bus)
    local bat_amp = get(bat_amp_bus)

    local fail = get(bat_fail) == 1
    local kz = get(bat_kz) == 1

    set(sim_bat_on, bat_on)

    if passed > 0 then
        local bat_volt = 17+ ((bat_charge - kz_timer) /2.5) -1.5 * bat_amp / 100

        if bat_on == 1 then
            if get(bat_source) == 1 then
                bat_charge = bat_charge - bat_amp * passed / 3600
                bat_volt = 17 + ((bat_charge - kz_timer) / 2.5) - 1.5 * bat_amp / 100

                if bat_charge < 2 then bat_volt = 3 end

                set(bat_amp_cc, 0)
            else
                if fail then
                    bat_charge = 0
                    bat_volt = 3
                    MAX_BAT_CAPACITY = 0
                end

                if get(bus_volt) > bat_volt then
                    bat_volt = get(bus_volt)
                end

                bat_charge = bat_charge + passed * 0.01
                --print(kz_timer)
                --print(current_table)
                set(bat_amp_cc, (MAX_BAT_CAPACITY - bat_charge) * BAT_CURRENT_COEF + interpolate(current_table, kz_timer)) -- Bat current depends on charge (Not bad)
            end

            if kz and kz_timer < 1800 then -- heat effect (?)
                kz_timer = kz_timer + passed * kz_timer
            end

            MAX_BAT_CAPACITY = MAX_BAT_CAPACITY - kz_timer

            set(bat_volt_bus, bat_volt) -- set volts
            if bat_charge < 0 then
                bat_charge = 0
            end
            if bat_charge > MAX_BAT_CAPACITY then
                bat_charge = MAX_BAT_CAPACITY
            end

            temp = 20 + get(bat_amp_cc) * 0.3
            set(bat_temp, temp)
        else
            if fail then
                bat_charge = 0
                bat_volt = 3
                MAX_BAT_CAPACITY = 0
            end

            set(bat_amp_cc, 0)
            set(bat_volt_bus, bat_volt)
            if temp > 20 then temp = temp - passed * 0.5 end
            set(bat_temp, temp)
            --print(bat_temp)
            --print(bat_charge)
        end
    end
end