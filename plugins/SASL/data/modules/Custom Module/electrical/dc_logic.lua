--[[

    This is the logic of the (27V) DC-Buses

    CREDITS: Felis TU154 for much of the bus logic here. I am incredible unexperienced in SASL so I used the open sourced SASLv3 TU154 as reference.

]]--

print("Loaded custom_modules/electrical/dc_logic.lua!")

-- C O N T R O L
defineProperty("busDLC_connect", globalPropertyi("il62/electr/buses/leftDC_connect")) -- Left DC Bus connected
defineProperty("busRDC_connect", globalPropertyi("il62/electr/buses/rightDC_connect")) -- Right DC Bus connected
defineProperty("bus27_connect", globalPropertyi("il62/electr/buses/bus27_connect"))
defineProperty("busDC_rect1", globalPropertyf("il62/electr/base/rect1")) -- Rect 1 connected
defineProperty("busDC_rect2", globalPropertyf("il62/electr/base/rect2")) -- Rect 2 connected
defineProperty("busDC_rect3", globalPropertyf("il62/electr/base/rect3")) -- Rect 3 connected
defineProperty("busDC_rect4", globalPropertyf("il62/electr/base/rect4")) -- Rect 4 connected
defineProperty("bat1_on", globalPropertyf("il62/electr/base/bat1_switch"))
defineProperty("bat2_on", globalPropertyf("il62/electr/base/bat2_switch"))
defineProperty("bat3_on", globalPropertyf("il62/electr/base/bat3_switch"))
defineProperty("bat4_on", globalPropertyf("il62/electr/base/bat4_switch"))
defineProperty("bat_connected", globalPropertyi("il62/electr/bat_connected")) -- Is any battery connected

-- S O U R C E S
-- BATTERY
defineProperty("bat_volt_1", globalPropertyf("il62/electr/base/bat_volt_1"))
defineProperty("bat_volt_2", globalPropertyf("il62/electr/base/bat_volt_2"))
defineProperty("bat_volt_3", globalPropertyf("il62/electr/base/bat_volt_3"))
defineProperty("bat_volt_4", globalPropertyf("il62/electr/base/bat_volt_4"))
defineProperty("bat_amp_1", globalPropertyf("il62/electr/base/bat_amp_1"))
defineProperty("bat_amp_2", globalPropertyf("il62/electr/base/bat_amp_2"))
defineProperty("bat_amp_3", globalPropertyf("il62/electr/base/bat_amp_3"))
defineProperty("bat_amp_4", globalPropertyf("il62/electr/base/bat_amp_4"))
defineProperty("bat_1_kz", globalPropertyi("il62/failures/bat_1_tru"))
defineProperty("bat_2_kz", globalPropertyi("il62/failures/bat_2_tru"))
defineProperty("bat_3_kz", globalPropertyi("il62/failures/bat_3_tru"))
defineProperty("bat_4_kz", globalPropertyi("il62/failures/bat_4_tru"))
defineProperty("bat_fail_1", globalPropertyi("il62/failures/bat_1_fail"))
defineProperty("bat_fail_2", globalPropertyi("il62/failures/bat_2_fail"))
defineProperty("bat_fail_3", globalPropertyi("il62/failures/bat_3_fail"))
defineProperty("bat_fail_4", globalPropertyi("il62/failures/bat_4_fail"))
defineProperty("bat_source_1", globalPropertyf("il62/electr/base/bat1"))
defineProperty("bat_source_2", globalPropertyf("il62/electr/base/bat2"))
defineProperty("bat_source_3", globalPropertyf("il62/electr/base/bat3"))
defineProperty("bat_source_4", globalPropertyf("il62/electr/base/bat4"))

--APU
defineProperty("apu_system_on", globalPropertyi("il62/apu/system_on"))
defineProperty("apu_start_seq", globalPropertyi("il62/apu/start_sequence"))
defineProperty("apu_start_bus", globalPropertyf("il62/electr/apu/apu_start_bus"))
defineProperty("apu_start_cc", globalPropertyf("il62/electr/apu/apu_start_cc"))
defineProperty("apu_main_switch", globalPropertyf("il62/electr/apu/main"))

--RECTIFIERS
defineProperty("vu1_volt", globalPropertyf("il62/electr/base/rect1_volt"))
defineProperty("vu2_volt", globalPropertyf("il62/electr/base/rect2_volt"))
defineProperty("vu3_volt", globalPropertyf("il62/electr/base/rect3_volt"))
defineProperty("vu4_volt", globalPropertyf("il62/electr/base/rect4_volt"))
defineProperty("vu1_amp", globalPropertyf("il62/electr/base/rect1_amp"))
defineProperty("vu2_amp", globalPropertyf("il62/electr/base/rect2_amp"))
defineProperty("vu3_amp", globalPropertyf("il62/electr/base/rect3_amp"))
defineProperty("vu4_amp", globalPropertyf("il62/electr/base/rect4_amp"))
defineProperty("vu1_fail", globalPropertyi("il62/failures/rect1_fail"))
defineProperty("vu2_fail", globalPropertyi("il62/failures/rect2_fail"))
defineProperty("vu3_fail", globalPropertyi("il62/failures/rect3_fail"))
defineProperty("vu4_fail", globalPropertyi("il62/failures/rect4_fail"))

--AUX SOURCES
defineProperty("bus115_1_volt", globalPropertyf("il62/electr/buses/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("il62/electr/buses/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("il62/electr/buses/bus115_3_volt"))
defineProperty("bus115_4_volt", globalPropertyf("il62/electr/buses/bus115_4_volt"))
defineProperty("gear_defl", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))

--RESULTS
defineProperty("bus27_volt_left", globalPropertyf("il62/electr/buses/dc_left_volt"))
defineProperty("bus27_volt_right", globalPropertyf("il62/electr/buses/dc_right_volt"))
defineProperty("bus27_amp_left", globalPropertyf("il62/electr/buses/dc_left_amp"))
defineProperty("bus27_amp_right", globalPropertyf("il62/electr/buses/dc_right_amp"))
defineProperty("bus27_source_left", globalPropertyf("il62/electr/buses/dc_left_src"))
defineProperty("bus27_source_right", globalPropertyf("il62/electr/buses/dc_right_src"))
defineProperty("buses_connected", globalPropertyi("il62/electr/buses/bus_connected"))

--TIME
defineProperty("frame_time", globalPropertyf("il62/frame_time"))


local source_L = 0 -- First calculate, then divide
local source_R = 0

--[[
    During the launch of the APU, the buses will be merged. At the same time, batteries 3 and 4 switch to start, while 1 and 2 continue to feed the 27VDC Buses.

    If there is voltage in the tires (or buses, translation error) 115/200V, all FOUR rectifiers are automatically switched on.
]]--

function bool2int(var)
    if var then return 1
    else return 0 end
end

function int2bool(var)
    if math.abs(var) ~= 0 then return true
    else return false end
end

local vu_overload_1 = false
local vu_overload_2 = false
local vu_overload_3 = false
local vu_overload_4 = false

function update()
    if get(frame_time) > 0 then
        local vu1_sw = get(busDC_rect1)
        local vu2_sw = get(busDC_rect2)
        local vu3_sw = get(busDC_rect3)
        local vu4_sw = get(busDC_rect4)
        local bus_volt_L = 0
        local bus_volt_R = 0
        local bat1 = get(bat1_on)
        local bat2 = get(bat2_on)
        local bat3 = get(bat3_on)
        local bat4 = get(bat4_on)
        local bat_works_1 = bat1 * (1 - get(bat_1_kz)) * (1 - get(bat_fail_1))
		local bat_works_2 = bat2 * (1 - get(bat_2_kz)) * (1 - get(bat_fail_2))
		local bat_works_3 = bat3 * (1 - get(bat_3_kz)) * (1 - get(bat_fail_3))
		local bat_works_4 = bat4 * (1 - get(bat_4_kz)) * (1 - get(bat_fail_4))
        local vu1_work = get(bus115_1_volt) >= 115 and get(vu1_fail) == 0 and not vu_overload_1
		local vu2_work = get(bus115_2_volt) >= 115 and get(vu2_fail) == 0 and not vu_overload_2
        local vu3_work = get(bus115_3_volt) >= 115 and get(vu3_fail) == 0 and not vu_overload_3
		local vu4_work = get(bus115_4_volt) >= 115 and get(vu4_fail) == 0 and not vu_overload_4
        if vu1_work then set(vu1_volt, 28.5) else set(vu1_volt, 0) end
		if vu2_work then set(vu2_volt, 28.5) else set(vu2_volt, 0) end
        if vu3_work then set(vu3_volt, 28.5) else set(vu3_volt, 0) end
		if vu4_work then set(vu4_volt, 28.5) else set(vu4_volt, 0) end
        local vu1 = bool2int(vu1_work)
		local vu2 = bool2int(vu2_work)
        local vu3 = bool2int(vu3_work)
		local vu4 = bool2int(vu4_work)

        if bat1 == 0 and bat2 == 0 and bat3 == 0 and bat4 == 0 then
			set(bat_connected, 0)
		else
			set(bat_connected, 1)
		end

        local vu1_conn = 0
		if vu1_work and vu1_sw == 1 then vu1_conn = 1 end
		
		local vu2_conn = 0
		if vu2_work and vu2_sw == 1 then vu2_conn = 1 end

        local vu3_conn = 0
		if vu3_work and vu3_sw == 1 then vu3_conn = 1 end
		
		local vu4_conn = 0
		if vu4_work and vu4_sw == 1 then vu4_conn = 1 end

        -- check load on Rectifiers (VU) and set overloading flag
        if get(vu1_amp) > 450 then vu_overload_1 = true
		elseif vu1_sw < 1 then vu_overload_1 = false 
		end

		if get(vu2_amp) > 450 then vu_overload_2 = true
		elseif vu2_sw < 1 then vu_overload_2 = false 
		end	

        if get(vu3_amp) > 450 then vu_overload_3 = true
		elseif vu3_sw < 1 then vu_overload_3 = false 
		end

		if get(vu4_amp) > 450 then vu_overload_3 = true
		elseif vu4_sw < 1 then vu_overload_3 = false 
		end

        local bus_amp_L = get(bus27_amp_left)
		local bus_amp_R = get(bus27_amp_right)
		local apu_amp = get(apu_start_cc)
		local apu_volt = get(apu_start_bus)

        if get(apu_start_seq) == 1 then
            set(buses_connected, 1)
            if vu1_conn == 1 or vu2_conn == 1 or vu3_conn == 1 or vu4_conn == 1 then
                source_L = 1
                source_R = 1
                bus_volt_L = 28.5
                bus_volt_R = 28.5
                apu_volt = 28.5
                set(bat_source_1, 0)
                set(bat_source_2, 0)
                set(bat_source_3, 0)
                set(bat_source_4, 0)
                set(vu1_amp, (bus_amp_L + bus_amp_R + apu_amp) * vu1_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn)) -- set currents
				set(vu2_amp, (bus_amp_L + bus_amp_R + apu_amp) * vu2_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn))
                set(vu3_amp, (bus_amp_L + bus_amp_R + apu_amp) * vu3_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn))
				set(vu4_amp, (bus_amp_L + bus_amp_R + apu_amp) * vu4_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn))
                set(bat_amp_1, 0)
                set(bat_amp_2, 0)
                set(bat_amp_3, 0)
                set(bat_amp_4, 0)
            elseif get(gear_defl) > 0.05 then -- battery source for starting APU on ground
                if (bat_works_1 + bat_works_2 + bat_works_3 + bat_works_4) > 0 then
                    source_L = 3
                    source_R = 3
                    bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3 + get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4)
                    bus_volt_R = bus_volt_L
                    apu_volt = bus_volt_L
                    set(bat_source_1, bat_works_1)
                    set(bat_source_2, bat_works_2)
                    set(bat_source_3, bat_works_3)
                    set(bat_source_4, bat_works_4)
                    set(vu1_amp, 0) -- set currents (again)
                    set(vu2_amp, 0)
                    set(vu3_amp, 0)
                    set(vu4_amp, 0)
                    set(bat_amp_1, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_1 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
                    set(bat_amp_2, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_2 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_3, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_3 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_4, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_4 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
                else
                    source_L = 0
                    source_R = 0
                    bus_volt_L = 0
                    bus_volt_R = 0
                    apu_volt = 0
                    set(bat_source_1, bat_works_1)
                    set(bat_source_2, bat_works_2)
                    set(bat_source_3, bat_works_3)
                    set(bat_source_4, bat_works_4)
                end
                -- battery source in flight for starting apu
                source_L = 3
                source_R = 3
                if bat_works_1 + bat_works_2 > 0 then -- only bat 1 and bat 2 gives power to buses. bat 3 and bat 4 gives power for APU starter
                    bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_2) * bat_works_2) / (bat_works_1 + bat_works_2)
					bus_volt_R = bus_volt_L
					set(bat_amp_1, (bus_amp_L + bus_amp_R) * bat_works_1 / (bat_works_1 + bat_works_2))
					set(bat_amp_2, (bus_amp_L + bus_amp_R) * bat_works_2 / (bat_works_1 + bat_works_2))
                else
                    bus_volt_L = 0 
					bus_volt_R = 0
					set(vu1_amp, 0)
					set(vu2_amp, 0)
					set(vu3_amp, 0)
                    set(vu4_amp, 0)
					set(bat_amp_1, 0)
					set(bat_amp_2, 0)
                end
                set(bat_source_1, bat_works_1)
				set(bat_source_2, bat_works_2)
				set(bat_source_3, bat_works_3)
				set(bat_source_4, bat_works_4)
                -- set currents for APU
                if bat_works_3 + bat_works_4 > 0 then
					apu_volt = (get(bat_volt_3) * bat_works_3 + get(bat_volt_4) * bat_works_4) / (bat_works_3 + bat_works_4)
					set(bat_amp_3, (apu_amp * bat_works_3 / (bat_works_3 + bat_works_4)))
					set(bat_amp_4, (apu_amp * bat_works_4 / (bat_works_3 + bat_works_4)))
				else
					apu_volt = 0
					set(bat_amp_3, 0)
					set(bat_amp_4, 0)
				end
            end
        elseif get(bus27_connect) == 1 or get(apu_system_on) == 1 then -- if busses connected or APU main switcher is ON
            set(buses_connected, 1)
            if ((vu1_work and vu1_conn == 1) or (vu2_work and vu2_conn == 1) or (vu3_work and vu3_conn == 1) or (vu4_work and vu4_conn == 1)) and (vu1_sw ~=0 or vu2_sw ~= 0 or vu3_sw ~= 0 or vu4_sw ~= 0) then
                source_L = 1
				source_R = 1
				bus_volt_L = 28.5
				bus_volt_R = 28.5
				apu_volt = 28.5
				set(bat_source_1, 0)
				set(bat_source_2, 0)
				set(bat_source_3, 0)
				set(bat_source_4, 0)
				set(vu1_amp, (bus_amp_L + bus_amp_R) * vu1_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn)) -- set currents
				set(vu2_amp, (bus_amp_L + bus_amp_R) * vu2_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn))
                set(vu3_amp, (bus_amp_L + bus_amp_R) * vu2_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn))
                set(vu4_amp, (bus_amp_L + bus_amp_R) * vu2_conn / (vu1_conn + vu2_conn + vu3_conn + vu4_conn))
                set(bat_amp_1, 0)
				set(bat_amp_2, 0)
				set(bat_amp_3, 0)
				set(bat_amp_4, 0)
            else
                if (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4) > 0 then
					source_L = 3
					source_R = 3
					bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3 + get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4)
					bus_volt_R = bus_volt_L
					apu_volt = bus_volt_L
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
					-- set currents
					set(vu1_amp, 0)
					set(vu2_amp, 0)
					set(vu3_amp, 0)
                    set(vu4_amp, 0)
					set(bat_amp_1, (bus_amp_L + bus_amp_R) * bat_works_1 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_2, (bus_amp_L + bus_amp_R) * bat_works_2 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_3, (bus_amp_L + bus_amp_R) * bat_works_3 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_4, (bus_amp_L + bus_amp_R) * bat_works_4 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
				else 
					source_L = 0
					source_R = 0
					bus_volt_L = 0
					bus_volt_R = 0
					apu_volt = 0
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
				end
            end
        else
            set(buses_connected, 0)
            apu_volt = 0
            -- left bus calc. check sources, cals voltage
			if vu1_work and vu1_sw == 1 then -- VU1 works. connect doesn't matter
				--print(get(bus27_volt_left))
				source_L = 1
				bus_volt_L =  28.5
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, bus_amp_L)
                set(vu3_amp, 0)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
            elseif vu3_work and vu1_sw == -1 then -- VU res works. connect doesn't matter
				source_L = 2
				bus_volt_L = 28.5
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, bus_amp_L)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
            elseif bat_works_1 + bat_works_3 > 0 then
				bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3) / (bat_works_1 + bat_works_3)
				source_L = 3
				set(bat_source_1, bat_works_1)
				set(bat_source_3, bat_works_3)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, 0)
				set(bat_amp_1, bus_amp_L * bat_works_1 / (bat_works_1 + bat_works_3))
				set(bat_amp_3, bus_amp_L * bat_works_3 / (bat_works_1 + bat_works_3))
			else
				source_L = 0
				bus_volt_L = 0
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, 0)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
			end

            if vu2_work and vu2_sw == 1 then -- VU2 works. connect doesn't matter
				source_R = 1
				bus_volt_R =  28.5
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, bus_amp_R)
				--set(vu3_amp, 0)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			elseif vu4_work and vu2_sw == -1 then -- VU res works. connect doesn't matter
				source_R = 2
				bus_volt_R = 28.5
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, 0)
				set(vu4_amp, get(vu4_amp) + bus_amp_R)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
            elseif bat_works_2 + bat_works_4 > 0 then
				bus_volt_R = (get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_2 + bat_works_4)
				source_R = 3
				set(bat_source_2, bat_works_2)
				set(bat_source_4, bat_works_4)
				-- set currents
				set(vu2_amp, 0)
				--set(vu3_amp, 0)
				set(bat_amp_2, bus_amp_R * bat_works_2 / (bat_works_2 + bat_works_4))
				set(bat_amp_4, bus_amp_R * bat_works_4 / (bat_works_2 + bat_works_4))
            else
				source_R = 0
				bus_volt_R = 0
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, 0)
				--set(vu3_amp, 0)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			end
        end

        set(bus27_volt_left, bus_volt_L)
		set(bus27_volt_right, bus_volt_R)

		set(bus27_source_left, source_L)
		set(bus27_source_right, source_R)
		
		set(apu_start_bus, apu_volt)
    end
end