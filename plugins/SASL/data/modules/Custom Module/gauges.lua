fuel_capacity_tank7=globalPropertyf("il62/over/fuel/capacity/tank7")
fuel_capacity_tank5L=globalPropertyf("il62/over/fuel/capacity/tank5L")
fuel_capacity_tank1=globalPropertyf("il62/over/fuel/capacity/tank1")
fuel_capacity_tank2=globalPropertyf("il62/over/fuel/capacity/tank2")
fuel_capacity_sigma=globalPropertyf("il62/over/fuel/capacity/sigma")
fuel_capacity_tank6=globalPropertyf("il62/over/fuel/capacity/tank6")
fuel_capacity_tank3=globalPropertyf("il62/over/fuel/capacity/tank3")
fuel_capacity_tank4=globalPropertyf("il62/over/fuel/capacity/tank4")
fuel_capacity_tank5R=globalPropertyf("il62/over/fuel/capacity/tank5R")

defineProperty("tank1_w", globalProperty("sim/flightmodel/weight/m_fuel[3]"))
defineProperty("tank2_w", globalProperty("sim/flightmodel/weight/m_fuel[1]"))
defineProperty("tank3_w", globalProperty("sim/flightmodel/weight/m_fuel[2]"))
defineProperty("tank4_w", globalProperty("sim/flightmodel/weight/m_fuel[4]"))
defineProperty("tank5L_w", globalProperty("sim/flightmodel/weight/m_fuel[0]"))
defineProperty("tank5R_w", globalProperty("sim/flightmodel/weight/m_fuel[5]"))
defineProperty("tank6_w", globalProperty("sim/flightmodel/weight/m_fuel[6]"))
defineProperty("tank7_w", globalProperty("sim/flightmodel/weight/m_fuel[7]"))

frame_time=globalPropertyf("il62/frame_time")

function update()
    passed = get(frame_time)
    if passed>0 then
        if true then -- TODO: Enable electrical requirement // What this does: Only update fuel gauges when there is current. This way once current is lost,
            trueCap1=get(tank1_w)                   -- the gauges stay in the same position.
            trueCap2=get(tank2_w)
            trueCap3=get(tank3_w)
            trueCap4=get(tank4_w)
            trueCap6=get(tank6_w)
            trueCap5l=get(tank5L_w)
            trueCap5r=get(tank5R_w)
            trueCap7=get(tank7_w)
        end
        set(fuel_capacity_tank1, trueCap1)
        set(fuel_capacity_tank2, trueCap2)
        set(fuel_capacity_tank3, trueCap3)
        set(fuel_capacity_tank4, trueCap4)
        set(fuel_capacity_tank5R, trueCap5l)
        set(fuel_capacity_tank5L, trueCap5r)
        set(fuel_capacity_tank6, trueCap6)
        set(fuel_capacity_tank7, trueCap7)
        local totalCap = tonumber(trueCap1)+tonumber(trueCap2)+tonumber(trueCap3)+tonumber(trueCap4)+tonumber(trueCap5r)+tonumber(trueCap5l)+tonumber(trueCap6)+tonumber(trueCap7)
        set(fuel_capacity_sigma, totalCap)
    end
end