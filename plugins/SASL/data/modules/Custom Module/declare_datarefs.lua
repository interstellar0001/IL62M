createGlobalPropertyf("il62/frame_time", 0);
createGlobalPropertyi("il62/reset_state", 0)

--Lights
--Pedestal
createGlobalPropertyf("il62/lights/fcp/strength", 0)

--Engineer Panel
createGlobalPropertyf("il62/lights/eng/apu_gen", 0)
createGlobalPropertyf("il62/lights/eng/rect_1_fail", 0)
createGlobalPropertyf("il62/lights/eng/rect_2_fail", 0)
createGlobalPropertyf("il62/lights/eng/rect_3_fail", 0)
createGlobalPropertyf("il62/lights/eng/rect_4_fail", 0)
createGlobalPropertyf("il62/lights/eng/gen_1_fail", 0)
createGlobalPropertyf("il62/lights/eng/gen_2_fail", 0)
createGlobalPropertyf("il62/lights/eng/gen_3_fail", 0)
createGlobalPropertyf("il62/lights/eng/gen_4_fail", 0)

--APU Panel
createGlobalPropertyf("il62/lights/apu/doors_closed", 0)
createGlobalPropertyf("il62/lights/apu/bleed_closed", 0)
createGlobalPropertyf("il62/lights/apu/tsa6_fail", 0)
createGlobalPropertyf("il62/lights/apu/doors_open", 0)
createGlobalPropertyf("il62/lights/apu/low_oil_press", 0)
createGlobalPropertyf("il62/lights/apu/start_ready", 0)
createGlobalPropertyf("il62/lights/apu/high_temp", 0)
createGlobalPropertyf("il62/lights/apu/normal_speed", 0)
createGlobalPropertyf("il62/lights/apu/high_rpm", 0)

--Fuel
createGlobalPropertyf("il62/fuel/capacity/tank7", 0)
createGlobalPropertyf("il62/fuel/capacity/tank5L", 0)
createGlobalPropertyf("il62/fuel/capacity/tank1", 0)
createGlobalPropertyf("il62/fuel/capacity/tank2", 0)
createGlobalPropertyf("il62/fuel/capacity/sigma", 0)
createGlobalPropertyf("il62/fuel/capacity/tank6", 0)
createGlobalPropertyf("il62/fuel/capacity/tank3", 0)
createGlobalPropertyf("il62/fuel/capacity/tank4", 0)
createGlobalPropertyf("il62/fuel/capacity/tank5R", 0)

--//ElectroPanel//--
--gauges
createGlobalPropertyf("il62/electr/gauges/gen1_amp", 0)
createGlobalPropertyf("il62/electr/gauges/gen2_amp", 0)
createGlobalPropertyf("il62/electr/gauges/gen3_amp", 0)
createGlobalPropertyf("il62/electr/gauges/gen4_amp", 0)
createGlobalPropertyf("il62/electr/gauges/gen1_hz", 0)
createGlobalPropertyf("il62/electr/gauges/gen2_hz", 0)
createGlobalPropertyf("il62/electr/gauges/gen3_hz", 0)
createGlobalPropertyf("il62/electr/gauges/gen4_hz", 0)
createGlobalPropertyf("il62/electr/gauges/115_1_amp", 0)
createGlobalPropertyf("il62/electr/gauges/115_2_amp", 0)
createGlobalPropertyf("il62/electr/gauges/115_3_amp", 0)
createGlobalPropertyf("il62/electr/gauges/115_4_amp", 0)
createGlobalPropertyf("il62/electr/gauges/bat_amp", 0)

--Electronics
-- B A T T E R I E S
bat1=createGlobalPropertyf("il62/electr/base/bat1", 0)
bat2=createGlobalPropertyf("il62/electr/base/bat2", 0)
bat3=createGlobalPropertyf("il62/electr/base/bat3", 0)
bat4=createGlobalPropertyf("il62/electr/base/bat4", 0)
batAmp1=createGlobalPropertyf("il62/electr/base/bat_amp_1", 0)
batAmp2=createGlobalPropertyf("il62/electr/base/bat_amp_2", 0)
batAmp3=createGlobalPropertyf("il62/electr/base/bat_amp_3", 0)
batAmp4=createGlobalPropertyf("il62/electr/base/bat_amp_4", 0)
batCC1=createGlobalPropertyf("il62/electr/base/bat_cc_1", 0)
batCC2=createGlobalPropertyf("il62/electr/base/bat_cc_2", 0)
batCC3=createGlobalPropertyf("il62/electr/base/bat_cc_3", 0)
batCC4=createGlobalPropertyf("il62/electr/base/bat_cc_4", 0)
batVolt1=createGlobalPropertyf("il62/electr/base/bat_volt_1", 0)
batVolt2=createGlobalPropertyf("il62/electr/base/bat_volt_2", 0)
batVolt3=createGlobalPropertyf("il62/electr/base/bat_volt_3", 0)
batVolt4=createGlobalPropertyf("il62/electr/base/bat_volt_4", 0)
batTemp1=createGlobalPropertyf("il62/electr/base/bat_temp_1", 0)
batTemp2=createGlobalPropertyf("il62/electr/base/bat_temp_2", 0)
batTemp3=createGlobalPropertyf("il62/electr/base/bat_temp_3", 0)
batTemp4=createGlobalPropertyf("il62/electr/base/bat_temp_4", 0)
bat1_switch=createGlobalPropertyf("il62/electr/base/bat1_switch", 0)
bat2_switch=createGlobalPropertyf("il62/electr/base/bat2_switch", 0)
bat3_switch=createGlobalPropertyf("il62/electr/base/bat3_switch", 0)
bat4_switch=createGlobalPropertyf("il62/electr/base/bat4_switch", 0)
batConnected=createGlobalPropertyi("il62/electr/bat_connected", 0) -- Is any battery connected

-- R E C T I F I E R S
rect1=createGlobalPropertyf("il62/electr/base/rect1", 0)
rect2=createGlobalPropertyf("il62/electr/base/rect2", 0)
rect3=createGlobalPropertyf("il62/electr/base/rect3", 0)
rect4=createGlobalPropertyf("il62/electr/base/rect4", 0)
rect1_volt=createGlobalPropertyf("il62/electr/base/rect1_volt", 0)
rect2_volt=createGlobalPropertyf("il62/electr/base/rect2_volt", 0)
rect3_volt=createGlobalPropertyf("il62/electr/base/rect3_volt", 0)
rect4_volt=createGlobalPropertyf("il62/electr/base/rect4_volt", 0)
rect1_amp=createGlobalPropertyf("il62/electr/base/rect1_amp", 0)
rect2_amp=createGlobalPropertyf("il62/electr/base/rect2_amp", 0)
rect3_amp=createGlobalPropertyf("il62/electr/base/rect3_amp", 0)
rect4_amp=createGlobalPropertyf("il62/electr/base/rect4_amp", 0)


-- B U S E S
-- 27VDC
leftDCBusVoltage=createGlobalPropertyf("il62/electr/buses/dc_left_volt", 0)
rightDCBusVoltage=createGlobalPropertyf("il62/electr/buses/dc_right_volt", 0)
leftDCBusAmp=createGlobalPropertyf("il62/electr/buses/dc_left_amp", 0)
rightDCBusAmp=createGlobalPropertyf("il62/electr/buses/dc_right_amp", 0)
leftDCBusSrc=createGlobalPropertyf("il62/electr/buses/dc_left_src", 0)
rightDCBusSrc=createGlobalPropertyf("il62/electr/buses/dc_right_src", 0)
leftDCBusConnected=createGlobalPropertyi("il62/electr/buses/leftDC_connect", 0)
leftDCBusConnected=createGlobalPropertyi("il62/electr/buses/rightDC_connect", 0)
bus27_connect=createGlobalPropertyi("il62/electr/buses/bus27_connect", 0)
bus_connected=createGlobalPropertyi("il62/electr/buses/bus_connected", 0) -- Any bus connected (i think)

-- 115VAC/200VAC
bus115_1_volt=createGlobalPropertyf("il62/electr/buses/bus115_1_volt", 0)
bus115_2_volt=createGlobalPropertyf("il62/electr/buses/bus115_2_volt", 0)
bus115_3_volt=createGlobalPropertyf("il62/electr/buses/bus115_3_volt", 0)
bus115_4_volt=createGlobalPropertyf("il62/electr/buses/bus115_4_volt", 0)
bus115_1_amp=createGlobalPropertyf("il62/electr/buses/bus115_1_amp", 0)
bus115_2_amp=createGlobalPropertyf("il62/electr/buses/bus115_2_amp", 0)
bus115_3_amp=createGlobalPropertyf("il62/electr/buses/bus115_3_amp", 0)
bus115_4_amp=createGlobalPropertyf("il62/electr/buses/bus115_4_amp", 0)

--115VAC/200VAC Emergency
bus115_em_1_volt=createGlobalPropertyf("il62/electr/buses/bus115_em_1_volt", 0)
bus115_em_2_volt=createGlobalPropertyf("il62/electr/buses/bus115_em_2_volt", 0)
bus115_em_1_amp=createGlobalPropertyf("il62/electr/buses/bus115_em_1_amp", 0)
bus115_em_2_amp=createGlobalPropertyf("il62/electr/buses/bus115_em_2_amp", 0)

-- G E N E R A T O R S
gen1=createGlobalPropertyf("il62/electr/base/gen1", 0) -- Switches
gen2=createGlobalPropertyf("il62/electr/base/gen2", 0)
gen3=createGlobalPropertyf("il62/electr/base/gen3", 0)
gen4=createGlobalPropertyf("il62/electr/base/gen4", 0)
gen4=createGlobalPropertyf("il62/electr/base/gen5", 0) -- Gen5 = APU
gen1_volt=createGlobalPropertyf("il62/electr/base/gen1_volt", 0)
gen2_volt=createGlobalPropertyf("il62/electr/base/gen2_volt", 0)
gen3_volt=createGlobalPropertyf("il62/electr/base/gen3_volt", 0)
gen4_volt=createGlobalPropertyf("il62/electr/base/gen4_volt", 0)
gen4_volt=createGlobalPropertyf("il62/electr/base/gen5_volt", 0)
gen1_work=createGlobalPropertyi("il62/electr/base/gen1_work", 0)
gen2_work=createGlobalPropertyi("il62/electr/base/gen2_work", 0)
gen3_work=createGlobalPropertyi("il62/electr/base/gen3_work", 0)
gen4_work=createGlobalPropertyi("il62/electr/base/gen4_work", 0)
gen4_work=createGlobalPropertyi("il62/electr/base/gen5_work", 0)
gen1_amp=createGlobalPropertyf("il62/electr/base/gen1_amp", 0)
gen2_amp=createGlobalPropertyf("il62/electr/base/gen2_amp", 0)
gen3_amp=createGlobalPropertyf("il62/electr/base/gen3_amp", 0)
gen4_amp=createGlobalPropertyf("il62/electr/base/gen4_amp", 0)
gen4_amp=createGlobalPropertyf("il62/electr/base/gen5_amp", 0)
createGlobalPropertyf("il62/electr/base/gen1_overload", 0)
createGlobalPropertyf("il62/electr/base/gen2_overload", 0)
createGlobalPropertyf("il62/electr/base/gen3_overload", 0)
createGlobalPropertyf("il62/electr/base/gen4_overload", 0)
createGlobalPropertyf("il62/electr/base/gen5_overload", 0)

-- G P U (debug only)
gpu_vb=createGlobalPropertyf("il62/debug/gpu_volt", 0)
gpu_wb=createGlobalPropertyi("il62/debug/gpu_work", 0)
gpu_ap=createGlobalPropertyf("il62/debug/gpu_amp", 0)

rap=createGlobalPropertyf("il62/electr/base/rap", 0)
vu_rad=createGlobalPropertyf("il62/electr/base/vu_rad", 0)
vu_sh=createGlobalPropertyf("il62/electr/base/vu_sh", 0)
par1=createGlobalPropertyf("il62/electr/base/tie1", 0)
par2=createGlobalPropertyf("il62/electr/base/tie2", 0)
par3=createGlobalPropertyf("il62/electr/base/tie3", 0)
par4=createGlobalPropertyf("il62/electr/base/tie4", 0)

-- A P U
apu_dc=createGlobalPropertyf("il62/electr/base/apu_dc", 0) -- APU DC rectifier
gen_apu_gc_tumb=createGlobalPropertyf("il62/electr/base/gen_apu_gc_tumb", 0)
gen_apu_ac=createGlobalPropertyf("il62/electr/base/gen_apu_ac", 0) -- APU AC generator
apu_pump=createGlobalPropertyf("il62/electr/apu/pump", 0) -- APU fuel pump
apu_main=createGlobalPropertyf("il62/electr/apu/main", 0) -- Main APU switch
apu_syson=createGlobalPropertyi("il62/apu/system_on", 0) -- APU System on
apu_start_mode=createGlobalPropertyf("il62/electr/apu/start_mode", 0) -- APU start mode (Normal/Cold Start)
apu_damper=createGlobalPropertyf("il62/electr/apu/bleed_switch", 0)
apu_start=createGlobalPropertyf("il62/electr/apu/start", 0) -- Start APU
apu_startseq=createGlobalPropertyi("il62/apu/start_sequence", 0)
apu_stop=createGlobalPropertyf("il62/electr/apu/stop", 0) -- Stop APU
apu_startbus=createGlobalPropertyf("il62/electr/apu/apu_start_bus", 0)
apu_startcc=createGlobalPropertyf("il62/electr/apu/apu_start_cc", 0)
createGlobalPropertyf("il62/electr/apu/apu_egt", 0)
createGlobalPropertyf("il62/electr/apu/apu_rpm", 0)
createGlobalPropertyf("il62/electr/apu/apu_oiltemp", 0)
createGlobalPropertyf("il62/electr/apu/apu_oilquantity", 0)
createGlobalPropertyf("il62/electr/apu/apu_oilpress", 0)
createGlobalPropertyf("il62/electr/apu/apu_n1", 0)
createGlobalPropertyi("il62/electr/apu/apu_system_on", 0)
createGlobalPropertyf("il62/electr/apu/apu_fuel_remain", 0)
createGlobalPropertyf("il62/electr/apu/apu_airpress", 0)
createGlobalPropertyf("il62/electr/apu/apu_airdoors", 0)
createGlobalPropertyf("il62/electr/apu/apu_fuelpress", 0)
createGlobalPropertyi("il62/electr/apu/apu_burning_fuel", 0)
createGlobalPropertyi("il62/electr/apu/lamp_test")
createGlobalPropertyi("il62/elctr/apu/apu_rect", 0)
--apu_main_tumb_kolp=createGlobalPropertyf("il62/kvs/apu/tumb/main_tumb_kolp", 0) No idea what this is so disabled

-- 27VDC L O A D S
createGlobalPropertyf("il62/electr/fuel_pumps_27_cc")

bus1_vol=createGlobalPropertyf("il62/electr/voltages/bus1_vdc", 0)
bus2_vol=createGlobalPropertyf("il62/electr/voltages/bus2_vdc", 0)
bus1_amp=createGlobalPropertyf("il62/electr/voltages/bus1_amps", 0)
bus2_amp=createGlobalPropertyf("il62/electr/voltages/bus2_amps", 0)


start_eng_1=createGlobalPropertyf("il62/engines/start1", 0)
start_eng_2=createGlobalPropertyf("il62/engines/start2", 0)
start_eng_3=createGlobalPropertyf("il62/engines/start3", 0)
start_eng_4=createGlobalPropertyf("il62/engines/start4", 0)

type_start_1=createGlobalPropertyf("il62/engines/type_start_1", 0)
type_start_2=createGlobalPropertyf("il62/engines/type_start_2", 0)
type_start_3=createGlobalPropertyf("il62/engines/type_start_3", 0)
type_start_4=createGlobalPropertyf("il62/engines/type_start_4", 0)
kond_start=createGlobalPropertyf("il62/engines/kond_start", 0)

engine_1_oil_mes=createGlobalPropertyf("il62/engines/oil1", 0)
engine_2_oil_mes=createGlobalPropertyf("il62/engines/oil2", 0)
engine_3_oil_mes=createGlobalPropertyf("il62/engines/oil3", 0)
engine_4_oil_mes=createGlobalPropertyf("il62/engines/oil4", 0)



pres_l_start=createGlobalPropertyf("il62/engines/pres_l_start", 0)
pres_r_start=createGlobalPropertyf("il62/engines/pres_r_start", 0)
apu_rpm=createGlobalPropertyf("il62/kvs/apu/rpm", 0)
apu_t_out=createGlobalPropertyf("il62/kvs/apu/t_out", 0)
apu_t_oil=createGlobalPropertyf("il62/kvs/apu/t_oil", 0)

-- E X T E R N A L  L I G H T S
createGlobalPropertyi("il62/lights/ext/wing_land")
createGlobalPropertyf("il62/lights/ext/wing_land_cc")
createGlobalPropertyi("il62/lights/ext/nose_land")
createGlobalPropertyf("il62/lights/ext/nose_land_cc")
createGlobalPropertyi("il62/lights/ext/wing_turnoff")
createGlobalPropertyf("il62/lights/ext/wing_turnoff_cc")
createGlobalPropertyi("il62/lights/ext/nose_turnoff")
createGlobalPropertyf("il62/lights/ext/nose_turnoff_cc")

-- M A I N  P A N E L  G A U G E S
createGlobalPropertyf("il62/gauges/mp_capt/roll", 0)
createGlobalPropertyf("il62/gauges/mp_capt/pitch", 0)
createGlobalPropertyf("il62/gauges/mp_capt/roll_stby", 0)
createGlobalPropertyf("il62/gauges/mp_capt/pitch_stby", 0)
createGlobalPropertyf("il62/gauges/mp_capt/mag_heading", 0)
createGlobalPropertyf("il62/gauges/mp_capt/nav_gs", -5)
createGlobalPropertyf("il62/gauges/mp_capt/nav_loc", -5)
createGlobalPropertyf("il62/gauges/mp_capt/sel_heading", 0)

-- Other

createGlobalPropertyf("il62/other/thermals/cockpit_temp", 21) -- temperature in the cabin


-- F A I L U R E S

createGlobalPropertyi("il62/failures/failures_enabled", 0) -- Are failures even on

createGlobalPropertyi("il62/failures/bat_1_fail", 0)
createGlobalPropertyi("il62/failures/bat_1_tru", 0) -- TRU = thermal runaway
createGlobalPropertyi("il62/failures/bat_2_fail", 0)
createGlobalPropertyi("il62/failures/bat_2_tru", 0)
createGlobalPropertyi("il62/failures/bat_3_fail", 0)
createGlobalPropertyi("il62/failures/bat_3_tru", 0)
createGlobalPropertyi("il62/failures/bat_4_fail", 0)
createGlobalPropertyi("il62/failures/bat_4_tru", 0)
createGlobalPropertyi("il62/failures/rect1_fail", 0)
createGlobalPropertyi("il62/failures/rect2_fail", 0)
createGlobalPropertyi("il62/failures/rect3_fail", 0)
createGlobalPropertyi("il62/failures/rect4_fail", 0)
createGlobalPropertyi("il62/failures/apu_start_fail", 0)
createGlobalPropertyi("il62/failures/apu_gen_fail", 0)
createGlobalPropertyi("il62/failures/apu_oilt_fail", 0)
createGlobalPropertyi("il62/failures/apu_egt_fail", 0)
createGlobalPropertyi("il62/failures/apu_fuel_left_fail", 0)
createGlobalPropertyi("il62/failures/apu_fail", 0)
createGlobalPropertyi("il62/failures/apu_press_fail", 0)
createGlobalPropertyf("il62/failures/apu_runtime")