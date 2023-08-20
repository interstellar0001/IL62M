defineProperty("bus27_amp_left", globalPropertyf("il62/electr/dc_left_amp"))
defineProperty("bus27_amp_right", globalPropertyf("il62/electr/dc_right_amp"))

defineProperty("bus115_1_amp", globalPropertyf("il62/electr/buses/bus115_1_amp"))
defineProperty("bus115_2_amp", globalPropertyf("il62/electr/buses/bus115_2_amp"))
defineProperty("bus115_3_amp", globalPropertyf("il62/electr/buses/bus115_3_amp"))
defineProperty("bus115_3_amp", globalPropertyf("il62/electr/buses/bus115_4_amp"))

defineProperty("bus115_em_1_amp", globalPropertyf("il62/electr/buses/bus115_em_1_amp"))
defineProperty("bus115_em_2_amp", globalPropertyf("il62/electr/buses/bus115_em_2_amp"))

defineProperty("bat_amp_cc_1", globalPropertyf("il62/electr/base/bat_cc_1"))
defineProperty("bat_amp_cc_2", globalPropertyf("il62/electr/base/bat_cc_2"))
defineProperty("bat_amp_cc_3", globalPropertyf("il62/electr/base/bat_cc_3"))
defineProperty("bat_amp_cc_4", globalPropertyf("il62/electr/base/bat_cc_4"))

defineProperty("vu1_amp", globalPropertyf("il62/electr/base/rect1_amp"))
defineProperty("vu2_amp", globalPropertyf("il62/electr/base/rect2_amp"))
defineProperty("vu3_amp", globalPropertyf("il62/electr/base/rect3_amp"))
defineProperty("vu4_amp", globalPropertyf("il62/electr/base/rect4_amp"))

function update()
    local bus27_L = get(bat_amp_cc_1) + get(bat_amp_cc_3)
    local bus27_R = get(bat_amp_cc_2) + get(bat_amp_cc_4)
    set(bus27_amp_left, bus27_L)
    set(bus27_amp_right, bus27_R)

    local bus115_1 = get(vu1_amp) * 0.25
    local bus115_2 = get(vu2_amp) * 0.25
    local bus115_3 = get(vu3_amp) * 0.25
    local bus115_4 = get(vu4_amp) * 0.25

    set(bus115_1_amp, bus115_1)
    set(bus115_2_amp, bus115_2)
    set(bus115_3_amp, bus115_3)
    set(bus115_4_amp, bus115_4)
end