fuel_capacity_tank7=globalPropertyf("il62/over/fuel/capacity/tank7")
fuel_capacity_tank5L=globalPropertyf("il62/over/fuel/capacity/tank5L")
fuel_capacity_tank1=globalPropertyf("il62/over/fuel/capacity/tank1")
fuel_capacity_tank2=globalPropertyf("il62/over/fuel/capacity/tank2")
fuel_capacity_sigma=globalPropertyf("il62/over/fuel/capacity/sigma")
fuel_capacity_tank6=globalPropertyf("il62/over/fuel/capacity/tank6")
fuel_capacity_tank3=globalPropertyf("il62/over/fuel/capacity/tank3")
fuel_capacity_tank4=globalPropertyf("il62/over/fuel/capacity/tank4")
fuel_capacity_tank5R=globalPropertyf("il62/over/fuel/capacity/tank5R")

fuelQuantity=globalPropertyf("sim/cockpit2/fuel/fuel_quantity")

frame_time=globalPropertyf("il62/frame_time")

function update()
    passed = get(frame_time)
    if passed>0 then
        if true then -- TODO: Enable electrical requirement // What this does: Only update fuel gauges when there is current. This way once current is lost,
            trueCap1=get(fuelQuantity, 4)                   -- the gauges stay in the same position.
            trueCap2=get(fuelQuantity, 2)
            trueCap3=get(fuelQuantity, 3)
            trueCap4=get(fuelQuantity, 5)
            trueCap6=get(fuelQuantity, 1)
            trueCap5l=get(fuelQuantity, 6)
            trueCap5r=get(fuelQuantity, 7)
            trueCap7=get(fuelQuantity, 8)
        end
        set(fuel_capacity_tank1, trueCap1)
        set(fuel_capacity_tank2, trueCap2)
        set(fuel_capacity_tank3, trueCap3)
        set(fuel_capacity_tank4, trueCap4)
        set(fuel_capacity_tank5R, trueCap5l)
        set(fuel_capacity_tank5L, trueCap5r)
        set(fuel_capacity_tank6, trueCap6)
        set(fuel_capacity_tank7, trueCap7)
        --local totalCap = tonumber(trueCap1)+tonumber(trueCap2)+tonumber(trueCap3)+tonumber(trueCap4)+tonumber(trueCap5r)+tonumber(trueCap5l)+tonumber(trueCap6)+tonumber(trueCap7)
        set(fuel_capacity_sigma, totalCap)
    end
end