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

defineProperty("apu_main_switch", globalPropertyf("il62/electr/apu/main"))
defineProperty("apu_start_mode", globalPropertyf("il62/electr/apu/start_mode"))
defineProperty("apu_air_bleed", globalPropertyf("il62/electr/apu/bleed_switch"))
defineProperty("apu_start", globalPropertyf("il62/electr/apu/start"))
defineProperty("apu_stop", globalPropertyf("il62/electr/apu/stop"))

defineProperty("apu_n1", globalPropertyf("il62/electr/apu/apu_n1"))
defineProperty("apu_oil_t", globalPropertyf("il62/electr/apu/apu_oiltemp"))
defineProperty("apu_oil_q", globalPropertyf("il62/electr/apu/apu_oilquantity"))
defineProperty("apu_oil_p", globalPropertyf("il62/electr/apu/apu_oilpress"))
defineProperty("apu_egt", globalPropertyf("il62/electr/apu/apu_egt"))

defineProperty("bus27_volt_left", globalPropertyf("il62/electr/buses/dc_left_volt"))
defineProperty("bus27_volt_right", globalPropertyf("il62/electr/buses/dc_right_volt"))
defineProperty("gen5_amp_bus", globalPropertyf("il62/electr/base/gen5_amp"))

defineProperty("apu_system_on", globalPropertyi("il62/electr/apu/apu_system_on"))

defineProperty("apu_fuel_last", globalPropertyf("il62/electr/apu/apu_fuel_remain"))

defineProperty("tank_7_w", globalPropertyf("sim/flightmodel/weight/m_fuel[6]"))

defineProperty("apu_air_press", globalPropertyf("il62/electr/apu/apu_airpress"))
defineProperty("apu_air_doors", globalPropertyf("il62/electr/apu/apu_airdoors"))
defineProperty("apu_fuel_p", globalPropertyi("il62/electr/apu/start_sequence"))

defineProperty("apu_start_bus", globalPropertyf("il62/electr/apu/apu_start_bus"))
defineProperty("apu_start_cc", globalPropertyf("il62/electr/apu/apu_start_cc"))
defineProperty("apu_start_seq", globalPropertyf("il62/apu/start_sequence"))
defineProperty("fuel_pumps_27_cc", globalPropertyf("il62/electr/fuel_pumps_27_cc"))
