-- this is logic of 115/200v buses

-- system has 4 separate buses and 2 emergency buses
-- buses powered by generators of engines, APU, GPU

-- normal currents on busses are
-- bus 1 - 70
-- bus 2 - 0. if AI works - +130
-- bus 3 - 45. if galley and lights works - +60

-- 4 generators works - 4 main buses powered each by its own gen

--[[

If gen1 fails:
1-2, 2-2, 3-3, 4-4

If gen2 fails:
1-1, 2-1, 3-3, 4-4

If gen3 fails:
1-1, 2-2, 3-4, 4-4

If gen4 fails:
1-1, 2-2, 3-3, 4-3

If 2 gens fail:
Galley & Lights (Internal) dont work. 
Any bus powers the one closest to it.
Example:
1-3, 2-4
1-2, 3-4

If 3 gens fail:
Galley & Lights (Internal) dont work.
Bus load is split 50/50 between remaining gen and APU

If 4 gens fail:
Galley & Lights (Internal) dont work.
APU powers bus 2 & 3

If 4 gens and APU fail:
Watch a "free energy" youtube tutorial which has not yet been debunked by ElectroBOOM!

]]--

-- EGT gauges can be powered from 115v or POS125
-- this logic better make insode EGT gauges
-- like:  (bus24_volt > 13 and pos125_on) or bus115_volt > 110

--generators
defineProperty("gen1_volt_bus", globalPropertyf("il62/electr/base/gen1_volt"))
defineProperty("gen2_volt_bus", globalPropertyf("il62/electr/base/gen2_volt"))
defineProperty("gen3_volt_bus", globalPropertyf("il62/electr/base/gen3_volt"))
defineProperty("gen4_volt_bus", globalPropertyf("il62/electr/base/gen4_volt"))
defineProperty("gen5_volt_bus", globalPropertyf("il62/electr/base/gen5_volt"))
defineProperty("gpu_volt_bus", globalPropertyf("il62/debug/gpu_volt"))

defineProperty("gen1_work_bus", globalPropertyi("il62/electr/base/gen1_work"))
defineProperty("gen2_work_bus", globalPropertyi("il62/electr/base/gen2_work"))
defineProperty("gen3_work_bus", globalPropertyi("il62/electr/base/gen3_work"))
defineProperty("gen4_work_bus", globalPropertyi("il62/electr/base/gen4_work"))
defineProperty("gen5_work_bus", globalPropertyf("il62/electr/base/gen5_work"))
defineProperty("gpu_work_bus", globalPropertyi("il62/debug/gpu_work"))

--bus parameters
defineProperty("bus115_1_volt", globalPropertyf("il62/electr/buses/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("il62/electr/buses/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("il62/electr/buses/bus115_3_volt"))
defineProperty("bus115_4_volt", globalPropertyf("il62/electr/buses/bus115_4_volt"))
defineProperty("bus115_em_1_volt", globalPropertyf("il62/electr/buses/bus115_em_1_volt"))
defineProperty("bus115_em_2_volt", globalPropertyf("il62/electr/buses/bus115_em_2_volt"))

defineProperty("bus115_1_amp", globalPropertyf("il62/electr/buses/bus115_1_amp"))
defineProperty("bus115_2_amp", globalPropertyf("il62/electr/buses/bus115_2_amp"))
defineProperty("bus115_3_amp", globalPropertyf("il62/electr/buses/bus115_3_amp"))
defineProperty("bus115_4_amp", globalPropertyf("il62/electr/buses/bus115_4_amp"))
defineProperty("bus115_em_1_amp", globalPropertyf("il62/electr/buses/bus115_em_1_amp"))
defineProperty("bus115_em_2_amp", globalPropertyf("il62/electr/buses/bus115_em_2_amp"))

-- results
defineProperty("gen1_amp", globalPropertyf("il62/electr/base/gen1_amp"))
defineProperty("gen2_amp", globalPropertyf("il62/electr/base/gen2_amp"))
defineProperty("gen3_amp", globalPropertyf("il62/electr/base/gen3_amp"))
defineProperty("gen4_amp", globalPropertyf("il62/electr/base/gen4_amp"))
defineProperty("gen5_amp", globalPropertyf("il62/electr/base/gen5_amp"))

--timelogic
defineProperty("frame_time", globalPropertyf("il62/frame_time"))

function update()
    if get(frame_time) > 0 then
        local bus1_volt = 0
        local bus2_volt = 0
        local bus3_volt = 0
        local bus4_volt = 0
        
        local bus_em_1_volt = 0
        local bus_em_2_volt = 0

        local bus1_amp = get(bus115_1_amp)
        local bus2_amp = get(bus115_2_amp)
        local bus3_amp = get(bus115_3_amp)
        local bus4_amp = get(bus115_4_amp)

        local bus_em_1_amp = get(bus115_em_1_amp)
        local bus_em_2_amp = get(bus115_em_2_amp)

        local gen1_work = get(gen1_work_bus) == 1
        local gen2_work = get(gen2_work_bus) == 1
        local gen3_work = get(gen3_work_bus) == 1
        local gen4_work = get(gen4_work_bus) == 1
        local gen5_work = get(gen5_work_bus) == 1
        local gpu_work = get(gpu_work_bus) == 1

        local gen1_volt = get(gen1_volt_bus)
        local gen2_volt = get(gen2_volt_bus)
        local gen3_volt = get(gen3_volt_bus)
        local gen4_volt = get(gen4_volt_bus)
        local gen5_volt = get(gen5_volt_bus)
        local gpu_volt = get(gpu_volt_bus)

        if gen1_work and gen2_work and gen3_work and gen4_work then -- All 4 generators work so APU/GPU are disregarded
            bus1_volt = gen1_volt
            bus2_volt = gen2_volt
            bus3_volt = gen3_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus1_volt
            bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp)
            set(gen2_amp, bus2_amp)
            set(gen3_amp, bus3_amp)
            set(gen4_amp, bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen2_work and gen3_work and gen4_work then
            bus1_volt = gen2_volt
            bus2_volt = gen2_volt
            bus3_volt = gen3_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, bus2_amp + bus1_amp)
            set(gen3_amp, bus3_amp)
            set(gen4_amp, bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen1_work and gen3_work and gen4_work then
            bus1_volt = gen1_volt
            bus2_volt = gen1_volt
            bus3_volt = gen3_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp + bus2_amp)
            set(gen2_amp, 0)
            set(gen3_amp, bus3_amp)
            set(gen4_amp, bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen1_work and gen2_work and gen4_work then
            bus1_volt = gen1_volt
            bus2_volt = gen2_volt
            bus3_volt = gen4_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp)
            set(gen2_amp, bus2_amp)
            set(gen3_amp, 0)
            set(gen4_amp, bus4_amp + bus3_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen1_work and gen2_work and gen3_work then
            bus1_volt = gen1_volt
            bus2_vol = gen2_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp)
            set(gen2_amp, bus2_amp)
            set(gen3_amp, bus3_amp + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen2_work and gen4_work then
            bus1_volt = gen2_volt
            bus2_vol = gen2_volt
            bus3_volt = gen4_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, bus2_amp + bus1_amp)
            set(gen3_amp, 0)
            set(gen4_amp, bus3_amp + bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen1_work and gen3_work then
            bus1_volt = gen1_volt
            bus2_vol = gen1_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus2_amp + bus1_amp)
            set(gen2_amp, 0)
            set(gen3_amp, bus3_amp + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen3_work and gen4_work then
            bus1_volt = gen3_volt
            bus2_vol = gen4_volt
            bus3_volt = gen3_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, bus1_amp + bus3_amp)
            set(gen4_amp, bus2_amp + bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen1_work and gen2_work then
            bus1_volt = gen1_volt
            bus2_vol = gen2_volt
            bus3_volt = gen1_volt
            bus4_volt = gen2_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp + bus3_amp)
            set(gen2_amp, bus2_amp + bus4_amp)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen2_work and gen3_work then
            bus1_volt = gen1_volt
            bus2_vol = gen2_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, bus2_amp + bus1_amp)
            set(gen3_amp, bus3_amp + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen1_work and gen4_work then
            bus1_volt = gen1_volt
            bus2_vol = gen2_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, bus2_amp + bus1_amp)
            set(gen3_amp, bus3_amp + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen2_work and gen4_work and gen5_work then
            bus1_volt = gen2_volt
            bus2_vol = gen2_volt
            bus3_volt = gen4_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, bus2_amp/2 + bus1_1_amp)
            set(gen3_amp, bus3_amp/2 + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, bus2_amp/2 + bus3_amp/2)
            set(gpu_amp, 0)
        elseif gen1_work and gen3_work then
            bus1_volt = gen1_volt
            bus2_vol = gen1_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp/2 + bus2_amp)
            set(gen2_amp, 0)
            set(gen3_amp, bus3_amp/2 + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, bus1_amp/2 + bus3_amp/2)
            set(gpu_amp, 0)
        elseif gen3_work and gen4_work and gen5_work then
            bus1_volt = gen4_volt
            bus2_vol = gen3_volt
            bus3_volt = gen3_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, bus3_amp/2 + bus2_amp)
            set(gen4_amp, bus4_amp/2 + bus1_amp)
            set(gen5_amp, bus3_amp/2 + bus4_amp/2)
            set(gpu_amp, 0)
        elseif gen1_work and gen2_work and gen5_work then
            bus1_volt = gen1_volt
            bus2_vol = gen2_volt
            bus3_volt = gen1_volt
            bus4_volt = gen2_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp/2 + bus3_amp)
            set(gen2_amp, bus2_amp/2 + bus4_amp)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, bus1_amp/2 + bus2_amp/2)
            set(gpu_amp, 0)
        elseif gen2_work and gen3_work and gen5_work then
            bus1_volt = gen2_volt
            bus2_vol = gen2_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, bus2_amp/2 + bus1_amp)
            set(gen3_amp, bus3_amp/2 + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, bus2_amp/2 + bus3_amp/2)
            set(gpu_amp, 0)
        elseif gen4_work then
            bus1_volt = gen4_volt
            bus2_volt = gen4_volt
            bus3_volt = gen4_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen4_amp, bus1_amp + bus2_amp + bus3_amp + bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen3_work then
            bus1_volt = gen3_volt
            bus2_volt = gen3_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen4_amp, 0)
            set(gen3_amp, bus1_amp + bus2_amp + bus3_amp + bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen2_work then
            bus1_volt = gen2_volt
            bus2_volt = gen2_volt
            bus3_volt = gen2_volt
            bus4_volt = gen2_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen4_amp, 0)
            set(gen3_amp, 0)
            set(gen2_amp, bus1_amp + bus2_amp + bus3_amp + bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen1_work then
            bus1_volt = gen1_volt
            bus2_volt = gen1_volt
            bus3_volt = gen1_volt
            bus4_volt = gen1_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen4_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen1_amp, bus1_amp + bus2_amp + bus3_amp + bus4_amp)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        elseif gen4_work and gen5_work then
            bus1_volt = gen5_volt
            bus2_volt = gen5_volt
            bus3_volt = gen4_volt
            bus4_volt = gen4_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen4_amp, bus3_amp + bus4_amp)
            set(gen5_amp, bus1_amp + bus2_amp)
            set(gpu_amp, 0)
        elseif gen3_work and gen5_work then
            bus1_volt = gen5_volt
            bus2_volt = gen5_volt
            bus3_volt = gen3_volt
            bus4_volt = gen3_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, bus3_amp + bus4_amp)
            set(gen4_amp, 0)
            set(gen5_amp, bus1_amp + bus2_amp)
            set(gpu_amp, 0)
        elseif gen2_work and gen5_work then
            bus1_volt = gen2_volt
            bus2_volt = gen2_volt
            bus3_volt = gen5_volt
            bus4_volt = gen5_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, bus1_amp + bus2_amp)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, bus3_amp + bus4_amp)
            set(gpu_amp, 0)
        elseif gen1_work and gen5_work then
            bus1_volt = gen1_volt
            bus2_volt = gen1_volt
            bus3_volt = gen5_volt
            bus4_volt = gen5_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, bus1_amp + bus2_amp)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, bus3_amp + bus4_amp)
            set(gpu_amp, 0)
        elseif gen5_work then
            bus1_volt = 0
            bus2_volt = gen5_volt
            bus3_volt = gen5_volt
            bus4_volt = 0
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, bus2_amp + bus3_amp)
        elseif gpu_work then
            bus1_volt = 0
            bus2_volt = gpu_volt
            bus3_volt = gpu_volt
            bus4_volt = 0
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, 0)
            set(gpu_amp, bus2_amp + bus3_amp)
        elseif gen5_work and gpu_work then
            bus1_volt = gpu_volt
            bus2_volt = gen5_volt
            bus3_volt = gen5_volt
            bus4_volt = gpu_volt
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt
            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, bus2_amp + bus3_amp)
            set(gpu_amp, bus1_amp + bus4_amp)
        else
            bus1_volt = 0
            bus2_volt = 0
            bus3_volt = 0
            bus4_volt = 0
            bus_em_1_volt = bus2_volt
			bus_em_2_volt = bus3_volt

            set(gen1_amp, 0)
            set(gen2_amp, 0)
            set(gen3_amp, 0)
            set(gen4_amp, 0)
            set(gen5_amp, 0)
            set(gpu_amp, 0)
        end

        set(bus115_1_volt, bus1_volt)
        set(bus115_2_volt, bus2_volt)
        set(bus115_3_volt, bus3_volt)
        set(bus115_4_volt, bus4_volt)

        set(bus115_em_1_volt, bus_em_1_volt)
        set(bus115_em_2_volt, bus_em_2_volt)
    end
end