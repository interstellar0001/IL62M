--//timer
createGlobalPropertyf("il62/frame_time", 0);

--//FrontPanel
speed_with_at=createGlobalPropertyf("il62/frgauges/speed_with_at", 0)
speed_gr_air=createGlobalPropertyf("il62/frgauges/speed_gr_air", 0)
var75=createGlobalPropertyf("il62/frgauges/var75", 0)
var30=createGlobalPropertyf("il62/frgauges/var30", 0)
stab=createGlobalPropertyf("il62/frgauges/stab", 0)
npp_mag_head=createGlobalPropertyf("il62/frgauges/npp/mag_head", 0)
npp_need_head=createGlobalPropertyf("il62/frgauges/npp/need_head", 0)
npp_select_head=createGlobalPropertyf("il62/frgauges/npp/select_head", 0)
npp_vert=createGlobalPropertyf("il62/frgauges/npp/vert", 0)
npp_gor=createGlobalPropertyf("il62/frgauges/npp/gor", 0)
G=createGlobalPropertyf("il62/frgauges/G", 0)
N=createGlobalPropertyf("il62/frgauges/N", 0)
G_closer=createGlobalPropertyf("il62/frgauges/G_closer", 0)
gauge_pitch=createGlobalPropertyf("il62/frgauges/pitch", 0)
elev_pitch=createGlobalPropertyf("il62/frgauges/elev_pitch", 0)
elev_pitch_trim=createGlobalPropertyf("il62/frgauges/elev_pitch_trim", 0)
spoiler_left=createGlobalPropertyf("il62/frgauges/spoiler_left", 0)
spoiler_right=createGlobalPropertyf("il62/frgauges/spoiler_right", 0)
flaps_left=createGlobalPropertyf("il62/frgauges/flaps_left", 0)
flaps_right=createGlobalPropertyf("il62/frgauges/flaps_right", 0)
rad_alt=createGlobalPropertyf("il62/frgauges/rad_alt", 0)
M1st=createGlobalPropertyf("il62/frgauges/M1st", 0)
M2nd=createGlobalPropertyf("il62/frgauges/M2nd", 0)

ark1_mag_head=createGlobalPropertyf("il62/frgauges/ark1/mag_head", 0)
ark1_str_sm=createGlobalPropertyf("il62/frgauges/ark1/str_sm", 0)
ark1_str_bg=createGlobalPropertyf("il62/frgauges/ark1/str_bg", 0)
ark2_mag_head=createGlobalPropertyf("il62/frgauges/ark2/mag_head", 0)
ark2_str_sm=createGlobalPropertyf("il62/frgauges/ark2/str_sm", 0)
ark2_str_bg=createGlobalPropertyf("il62/frgauges/ark2/str_bg", 0)


kpp_pitch=createGlobalPropertyf("il62/frgauges/kpp/pitch", 0)
kpp_roll=createGlobalPropertyf("il62/frgauges/kpp/roll", 0)
dop_pitch=createGlobalPropertyf("il62/frgauges/dop_pitch", 0)
dop_roll=createGlobalPropertyf("il62/frgauges/dop_roll", 0)



eng_1_rpm1=createGlobalPropertyf("il62/frgauges/eng_1/rpm1", 0)
eng_1_rpm2=createGlobalPropertyf("il62/frgauges/eng_1/rpm2", 0)
eng_1_gas_temp_gr=createGlobalPropertyf("il62/frgauges/eng_1/gas_temp_gr", 0)
eng_1_gas_temp_tc=createGlobalPropertyf("il62/frgauges/eng_1/gas_temp_tc", 0)
eng_1_fuel_pres=createGlobalPropertyf("il62/frgauges/eng_1/fuel_pres", 0)
eng_1_oil_pres=createGlobalPropertyf("il62/frgauges/eng_1/oil_pres", 0)
eng_1_oil_temp=createGlobalPropertyf("il62/frgauges/eng_1/oil_temp", 0)

eng_2_rpm1=createGlobalPropertyf("il62/frgauges/eng_2/rpm1", 0)
eng_2_rpm2=createGlobalPropertyf("il62/frgauges/eng_2/rpm2", 0)
eng_2_gas_temp_gr=createGlobalPropertyf("il62/frgauges/eng_2/gas_temp_gr", 0)
eng_2_gas_temp_tc=createGlobalPropertyf("il62/frgauges/eng_2/gas_temp_tc", 0)
eng_2_fuel_pres=createGlobalPropertyf("il62/frgauges/eng_2/fuel_pres", 0)
eng_2_oil_pres=createGlobalPropertyf("il62/frgauges/eng_2/oil_pres", 0)
eng_2_oil_temp=createGlobalPropertyf("il62/frgauges/eng_2/oil_temp", 0)

eng_3_rpm1=createGlobalPropertyf("il62/frgauges/eng_3/rpm1", 0)
eng_3_rpm2=createGlobalPropertyf("il62/frgauges/eng_3/rpm2", 0)
eng_3_gas_temp_gr=createGlobalPropertyf("il62/frgauges/eng_3/gas_temp_gr", 0)
eng_3_gas_temp_tc=createGlobalPropertyf("il62/frgauges/eng_3/gas_temp_tc", 0)
eng_3_fuel_pres=createGlobalPropertyf("il62/frgauges/eng_3/fuel_pres", 0)
eng_3_oil_pres=createGlobalPropertyf("il62/frgauges/eng_3/oil_pres", 0)
eng_3_oil_temp=createGlobalPropertyf("il62/frgauges/eng_3/oil_temp", 0)

eng_4_rpm1=createGlobalPropertyf("il62/frgauges/eng_4/rpm1", 0)
eng_4_rpm2=createGlobalPropertyf("il62/frgauges/eng_4/rpm2", 0)
eng_4_gas_temp_gr=createGlobalPropertyf("il62/frgauges/eng_4/gas_temp_gr", 0)
eng_4_gas_temp_tc=createGlobalPropertyf("il62/frgauges/eng_4/gas_temp_tc", 0)
eng_4_fuel_pres=createGlobalPropertyf("il62/frgauges/eng_4/fuel_pres", 0)
eng_4_oil_pres=createGlobalPropertyf("il62/frgauges/eng_4/oil_pres", 0)
eng_4_oil_temp=createGlobalPropertyf("il62/frgauges/eng_4/oil_temp", 0)


--Pedestal
--//FUEL//--
--tumb--
tank5l_1=createGlobalPropertyf("il62/fuel/tumb/tank5l_1", 0)
tank5l_2=createGlobalPropertyf("il62/fuel/tumb/tank5l_2", 0)
tank1_1=createGlobalPropertyf("il62/fuel/tumb/tank1_1", 0)
tank1_2=createGlobalPropertyf("il62/fuel/tumb/tank1_2", 0)
tank1_pod1=createGlobalPropertyf("il62/fuel/tumb/tank1_pod1", 0)
tank1_pod2=createGlobalPropertyf("il62/fuel/tumb/tank1_pod2", 0)
tank2_1=createGlobalPropertyf("il62/fuel/tumb/tank2_1", 0)
tank2_2=createGlobalPropertyf("il62/fuel/tumb/tank2_2", 0)
tank2_pod1=createGlobalPropertyf("il62/fuel/tumb/tank2_pod1", 0)
tank2_pod2=createGlobalPropertyf("il62/fuel/tumb/tank2_pod2", 0)
tank6_1=createGlobalPropertyf("il62/fuel/tumb/tank6_1", 0)
tank6_2=createGlobalPropertyf("il62/fuel/tumb/tank6_2", 0)
reserve=createGlobalPropertyf("il62/fuel/tumb/reserve", 0)
tank7_for=createGlobalPropertyf("il62/fuel/tumb/tank7_for", 0)
tank7_back=createGlobalPropertyf("il62/fuel/tumb/tank7_back", 0)
tank3_1=createGlobalPropertyf("il62/fuel/tumb/tank3_1", 0)
tank3_2=createGlobalPropertyf("il62/fuel/tumb/tank3_2", 0)
tank3_pod1=createGlobalPropertyf("il62/fuel/tumb/tank3_pod1", 0)
tank3_pod2=createGlobalPropertyf("il62/fuel/tumb/tank3_pod2", 0)
tank4_1=createGlobalPropertyf("il62/fuel/tumb/tank4_1", 0)
tank4_2=createGlobalPropertyf("il62/fuel/tumb/tank4_2", 0)
tank4_pod1=createGlobalPropertyf("il62/fuel/tumb/tank4_pod1", 0)
tank4_pod2=createGlobalPropertyf("il62/fuel/tumb/tank4_pod2", 0)
tank5r_1=createGlobalPropertyf("il62/fuel/tumb/tank5r", 0)
tank5r_2=createGlobalPropertyf("il62/fuel/tumb/tank5r_2", 0)
ldren=createGlobalPropertyf("il62/fuel/tumb/ldren", 0)
rdren=createGlobalPropertyf("il62/fuel/tumb/rdren", 0)
aroundL=createGlobalPropertyf("il62/fuel/tumb/aroundL", 0)
aroundC=createGlobalPropertyf("il62/fuel/tumb/aroundC", 0)
aroundR=createGlobalPropertyf("il62/fuel/tumb/aroundR", 0)


ex_brake_handle=createGlobalPropertyf("il62/piedestal/ex_brake", 0)
trim_angle=createGlobalPropertyf("il62/piedestal/trim_angle", 0)
trim_handle=createGlobalPropertyf("il62/piedestal/trim_handle", 0)
flaps_handle=createGlobalPropertyf("il62/piedestal/flaps_handle", 0)
gear_down=createGlobalPropertyf("il62/piedestal/gear_down", 0)
gear_up=createGlobalPropertyf("il62/piedestal/gear_up", 0)
tail_gear=createGlobalPropertyf("il62/piedestal/tail_gear", 0)



autopilot_main_aps=createGlobalPropertyf("il62/autopilot/main/aps", 0)
autopilot_stab_alt=createGlobalPropertyf("il62/autopilot/stab_alt", 0)
autopilot_main_at=createGlobalPropertyf("il62/autopilot/main/at", 0)
autopilot_main_hdg=createGlobalPropertyf("il62/autopilot/main/hdg", 0)
autopilot_main_roll=createGlobalPropertyf("il62/autopilot/main/roll", 0)
autopilot_main_pitch=createGlobalPropertyf("il62/autopilot/main/pitch", 0)

autopilot_second_aps=createGlobalPropertyf("il62/autopilot/second/aps", 0)
---
autopilot_second_at=createGlobalPropertyf("il62/autopilot/second/at", 0)
autopilot_second_hdg=createGlobalPropertyf("il62/autopilot/second/hdg", 0)
autopilot_second_roll=createGlobalPropertyf("il62/autopilot/second/roll", 0)
autopilot_second_pitch=createGlobalPropertyf("il62/autopilot/second/pitch", 0)

autopilot_off_aps=createGlobalPropertyf("il62/autopilot/off/aps", 0)
autopilot_stab_speed=createGlobalPropertyf("il62/autopilot/stab_speed", 0)
autopilot_off_at=createGlobalPropertyf("il62/autopilot/off/at", 0)
autopilot_off_hdg=createGlobalPropertyf("il62/autopilot/off/hdg", 0)
autopilot_off_roll=createGlobalPropertyf("il62/autopilot/off/roll", 0)
autopilot_off_pitch=createGlobalPropertyf("il62/autopilot/off/pitch", 0)

autopilot_type_flight=createGlobalPropertyf("il62/autopilot/type_flight", 0)
autopilot_ap=createGlobalPropertyf("il62/autopilot/ap", 0)
autopilot_ap_vert=createGlobalPropertyf("il62/autopilot/ap_vert", 0)
autopilot_ap_hor=createGlobalPropertyf("il62/autopilot/ap_hor", 0)
autopilot_roll=createGlobalPropertyf("il62/autopilot/roll", 0)
autopilot_hdg=createGlobalPropertyf("il62/autopilot/hdg", 0)
autopilot_v_pitch=createGlobalPropertyf("il62/autopilot/v_pitch", 0)
autopilot_at_speed=createGlobalPropertyf("il62/autopilot/at_speed", 0)
il62_autopilot_v_pitch_down=createGlobalPropertyf("il62/autopilot/v_pitch_down", 0)
il62_autopilot_v_pitch_up=createGlobalPropertyf("il62/autopilot/v_pitch_up", 0)
il62_autopilot_v_pitch_down=createGlobalPropertyf("il62/autopilot/v_pitch_off", 0)

speedATplus=createGlobalPropertyf("il62/autopilot/speedATplus", 0)
speedATminus=createGlobalPropertyf("il62/autopilot/speedATminus", 0)


--//overhead//--
wing_light_drop=createGlobalPropertyf("il62/over/lights/wing_light_drop", 0)
fuse_light_drop=createGlobalPropertyf("il62/over/lights/fuse_light_drop", 0)
wing_light_turn=createGlobalPropertyf("il62/over/lights/wing_light_turn", 0)
fuse_light_turn=createGlobalPropertyf("il62/over/lights/fuse_light_turn", 0)
tumb_strobe=createGlobalPropertyf("il62/over/lights/strobe", 0)
tumb_beacon=createGlobalPropertyf("il62/over/lights/beacon", 0)
tumb_ano=createGlobalPropertyf("il62/over/lights/ano", 0)
rashod_eng1_big=createGlobalPropertyf("il62/over/fuel/rashod/eng1_big", 0)
rashod_eng1_small=createGlobalPropertyf("il62/over/fuel/rashod/eng1_small", 0)
rashod_eng2_big=createGlobalPropertyf("il62/over/fuel/rashod/eng2_big", 0)
rashod_eng2_small=createGlobalPropertyf("il62/over/fuel/rashod/eng2_small", 0)
rashod_eng3_big=createGlobalPropertyf("il62/over/fuel/rashod/eng3_big", 0)
rashod_eng3_small=createGlobalPropertyf("il62/over/fuel/rashod/eng3_small", 0)
rashod_eng4_big=createGlobalPropertyf("il62/over/fuel/rashod/eng4_big", 0)
rashod_eng4_small=createGlobalPropertyf("il62/over/fuel/rashod/eng4_small", 0)
fuel_capacity_tank7=createGlobalPropertyf("il62/over/fuel/capacity/tank7", 0)
fuel_capacity_tank5L=createGlobalPropertyf("il62/over/fuel/capacity/tank5L", 0)
fuel_capacity_tank1=createGlobalPropertyf("il62/over/fuel/capacity/tank1", 0)
fuel_capacity_tank2=createGlobalPropertyf("il62/over/fuel/capacity/tank2", 0)
fuel_capacity_sigma=createGlobalPropertyf("il62/over/fuel/capacity/sigma", 0)
fuel_capacity_tank6=createGlobalPropertyf("il62/over/fuel/capacity/tank6", 0)
fuel_capacity_tank3=createGlobalPropertyf("il62/over/fuel/capacity/tank3", 0)
fuel_capacity_tank4=createGlobalPropertyf("il62/over/fuel/capacity/tank4", 0)
fuel_capacity_tank5R=createGlobalPropertyf("il62/over/fuel/capacity/tank5R", 0)


--//ElectroPanel//--

--gauges
gen_ta=createGlobalPropertyf("il62/electr/gauges/gen_ta",0)
Gvu1=createGlobalPropertyf("il62/electr/gauges/va1", 0)
Gvu2=createGlobalPropertyf("il62/electr/gauges/va2", 0)
Gvu3=createGlobalPropertyf("il62/electr/gauges/va3", 0)
Gvu4=createGlobalPropertyf("il62/electr/gauges/va4", 0)
apugen_amp=createGlobalPropertyf("il62/electr/gauges/gen_apu_amp", 0)
apugen_gc=createGlobalPropertyf("il62/electr/gauges/gen_apu_gc", 0)
amp_gen1=createGlobalPropertyf("il62/electr/gauges/gen1_amp", 0)
amp_gen2=createGlobalPropertyf("il62/electr/gauges/gen2_amp", 0)
amp_gen3=createGlobalPropertyf("il62/electr/gauges/gen3_amp", 0)
amp_gen4=createGlobalPropertyf("il62/electr/gauges/gen4_amp", 0)
gc_gen1=createGlobalPropertyf("il62/electr/gauges/gen1_gc", 0)
gc_gen2=createGlobalPropertyf("il62/electr/gauges/gen2_gc", 0)
gc_gen3=createGlobalPropertyf("il62/electr/gauges/gen3_gc", 0)
gc_gen4=createGlobalPropertyf("il62/electr/gauges/gen4_gc", 0)
leftlin_volt=createGlobalPropertyf("il62/electr/gauges/volt_lin_left", 0)
rightlin_volt=createGlobalPropertyf("il62/electr/gauges/volt_lin_right", 0)
left_volt=createGlobalPropertyf("il62/electr/gauges/volt_left", 0)
rightvolt=createGlobalPropertyf("il62/electr/gauges/volt_right", 0)
faza_volt=createGlobalPropertyf("il62/electr/gauges/volt_faza", 0)
bat_amp=createGlobalPropertyf("il62/electr/gauges/bat_amp", 0)

--tumblers
akb1=createGlobalPropertyf("il62/electr/tumb/akb1", 1)
akb2=createGlobalPropertyf("il62/electr/tumb/akb2", 0)
akb3=createGlobalPropertyf("il62/electr/tumb/akb3", 0)
akb4=createGlobalPropertyf("il62/electr/tumb/akb4", 0)
rap=createGlobalPropertyf("il62/electr/tumb/rap", 0)
teh_r_vu=createGlobalPropertyf("il62/electr/tumb/vu_teh_r", 0)
teh_l_vu=createGlobalPropertyf("il62/electr/tumb/vu_teh_l", 0)
vu_rad=createGlobalPropertyf("il62/electr/tumb/vu_rad", 0)
vu_sh=createGlobalPropertyf("il62/electr/tumb/vu_sh", 0)
vu1=createGlobalPropertyf("il62/electr/tumb/vu1", 0)
vu2=createGlobalPropertyf("il62/electr/tumb/vu2", 0)
vu3=createGlobalPropertyf("il62/electr/tumb/vu3", 0)
vu4=createGlobalPropertyf("il62/electr/tumb/vu4", 0)
apu_dc=createGlobalPropertyf("il62/electr/tumb/apu_dc", 0)
par1=createGlobalPropertyf("il62/electr/tumb/parall1", 0)
par2=createGlobalPropertyf("il62/electr/tumb/parall2", 0)
par3=createGlobalPropertyf("il62/electr/tumb/parall3", 0)
par4=createGlobalPropertyf("il62/electr/tumb/parall4", 0)
gen1=createGlobalPropertyf("il62/electr/tumb/gen1", 0)
gen2=createGlobalPropertyf("il62/electr/tumb/gen2", 0)
gen3=createGlobalPropertyf("il62/electr/tumb/gen3", 0)
gen4=createGlobalPropertyf("il62/electr/tumb/gen4", 0)
gen_apu_gc_tumb=createGlobalPropertyf("il62/electr/tumb/gen_apu_gc_tumb", 0)
gen_apu_ac=createGlobalPropertyf("il62/electr/tumb/gen_apu_ac", 0)
akb1_kolp=createGlobalPropertyf("il62/electr/tumb/akb1_kolp", 0)
akb2_kolp=createGlobalPropertyf("il62/electr/tumb/akb2_kolp", 0)
akb3_kolp=createGlobalPropertyf("il62/electr/tumb/akb3_kolp", 0)
akb4_kolp=createGlobalPropertyf("il62/electr/tumb/akb4_kolp", 0)

--lits
vu1_lit=createGlobalPropertyf("il62/electr/tumb/vu1_lit", 0)
vu2_lit=createGlobalPropertyf("il62/electr/tumb/vu2_lit", 0)
vu3_lit=createGlobalPropertyf("il62/electr/tumb/vu3_lit", 0)
vu4_lit=createGlobalPropertyf("il62/electr/tumb/vu4_lit", 0)
apu_dc__perenapr_lit=createGlobalPropertyf("il62/electr/tumb/apu_dc__perenapr_lit", 0)
apu_dc_lit=createGlobalPropertyf("il62/electr/tumb/apu_dc_lit", 0)
gen_apu_ac_lit=createGlobalPropertyf("il62/electr/tumb/gen_apu_ac_lit", 0)
gen1_lit=createGlobalPropertyf("il62/electr/tumb/gen1_lit", 0)
gen2_lit=createGlobalPropertyf("il62/electr/tumb/gen2_lit", 0)
gen3_lit=createGlobalPropertyf("il62/electr/tumb/gen3_lit", 0)
gen4_lit=createGlobalPropertyf("il62/electr/tumb/gen4_lit", 0)



--//KvsSide//--

--transponder
wave=createGlobalPropertyf("il62/kvs/tumb/transponder/wave", 0)
co63=createGlobalPropertyf("il62/kvs/tumb/transponder/co63", 0)
m4=createGlobalPropertyf("il62/kvs/tumb/transponder/m4", 0)
main=createGlobalPropertyf("il62/kvs/tumb/transponder/mode_main", 0)
kontr=createGlobalPropertyf("il62/kvs/tumb/transponder/kontr", 0)
znak=createGlobalPropertyf("il62/kvs/tumb/transponder/znak", 0)
mode_second=createGlobalPropertyf("il62/kvs/tumb/transponder/mode_second", 0)
sq_xxxy=createGlobalPropertyf("il62/kvs/tumb/transponder/kod/xxxy", 0)
sq_xxyx=createGlobalPropertyf("il62/kvs/tumb/transponder/kod/xxyx", 0)
sq_xyxx=createGlobalPropertyf("il62/kvs/tumb/transponder/kod/xyxx", 0)
sq_yxxx=createGlobalPropertyf("il62/kvs/tumb/transponder/kod/yxxx", 0)

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






--apu
apu_pump=createGlobalPropertyf("il62/kvs/apu/tumb/pump", 0)
apu_main_tumb=createGlobalPropertyf("il62/kvs/apu/tumb/main_tumb", 0)
apu_start_mode=createGlobalPropertyf("il62/kvs/apu/tumb/mode_start", 0)
apu_zaslonka=createGlobalPropertyf("il62/kvs/apu/tumb/zaslonka", 0)
apu_atart=createGlobalPropertyf("il62/kvs/apu/tumb/start", 0)
apu_stop=createGlobalPropertyf("il62/kvs/apu/tumb/stop", 0)
apu_main_tumb_kolp=createGlobalPropertyf("il62/kvs/apu/tumb/main_tumb_kolp", 0)



pres_l_start=createGlobalPropertyf("il62/engines/pres_l_start", 0)
pres_r_start=createGlobalPropertyf("il62/engines/pres_r_start", 0)
apu_rpm=createGlobalPropertyf("il62/kvs/apu/rpm", 0)
apu_t_out=createGlobalPropertyf("il62/kvs/apu/t_out", 0)
apu_t_oil=createGlobalPropertyf("il62/kvs/apu/t_oil", 0)








--//HydroSystem//--
park_br_press=createGlobalPropertyf("il62/gidrosystem/parkbrakes", 0)
br_press=createGlobalPropertyf("il62/gidrosystem/brakes", 0)
press_general=createGlobalPropertyf("il62/gidrosystem/general_net", 0)
press_hyd_pump=createGlobalPropertyf("il62/gidrosystem/pumpstation", 0)
demp_press=createGlobalPropertyf("il62/gidrosystem/demp_press_ball", 0)
demp_temp=createGlobalPropertyf("il62/gidrosystem/demp_temp_ball", 0)





--//Lit//--
lit_apu_exit=createGlobalPropertyf("il62/lit/apu/exit", 0)
lit_apu_rdy=createGlobalPropertyf("il62/lit/apu/rdy", 0)
lit_apu_zaslonka=createGlobalPropertyf("il62/lit/apu/zaslonka", 0)
lit_apu_press_f=createGlobalPropertyf("il62/lit/apu/pressure", 0)
lit_eng1_st=createGlobalPropertyf("il62/lit/eng1_start", 0)
lit_eng2_st=createGlobalPropertyf("il62/lit/eng2_start", 0)
lit_eng3_st=createGlobalPropertyf("il62/lit/eng3_start", 0)
lit_eng4_st=createGlobalPropertyf("il62/lit/eng4_start", 0)

apd_1_lit=createGlobalPropertyf("il62/engines/apd_1_lit", 0)
apd_2_lit=createGlobalPropertyf("il62/engines/apd_2_lit", 0)
apd_3_lit=createGlobalPropertyf("il62/engines/apd_3_lit", 0)
apd_4_lit=createGlobalPropertyf("il62/engines/apd_4_lit", 0)

prek_1_lit=createGlobalPropertyf("il62/engines/prek_1_lit", 0)
prek_2_lit=createGlobalPropertyf("il62/engines/prek_2_lit", 0)
prek_3_lit=createGlobalPropertyf("il62/engines/prek_3_lit", 0)
prek_4_lit=createGlobalPropertyf("il62/engines/prek_4_lit", 0)

podc_lit=createGlobalPropertyf("il62/kvs/apu/podc_lit", 0)
zasl_lit=createGlobalPropertyf("il62/kvs/apu/zasl_lit", 0)
stv_open_lit=createGlobalPropertyf("il62/kvs/apu/stv_open_lit", 0)
start_proc_lit=createGlobalPropertyf("il62/kvs/apu/start_proc_lit", 0)
ready_lit=createGlobalPropertyf("il62/kvs/apu/ready_lit", 0)
stv_close_lit=createGlobalPropertyf("il62/kvs/apu/stv_close_lit", 0)
error_lit=createGlobalPropertyf("il62/kvs/apu/error_lit", 0)
max_pres_lit=createGlobalPropertyf("il62/kvs/apu/max_pres_lit", 0)
min_pres_lit=createGlobalPropertyf("il62/kvs/apu/min_pres_lit", 0)
high_temp_lit=createGlobalPropertyf("il62/kvs/apu/high_temp_lit", 0)


il62_lit_gydro_pump1=createGlobalPropertyf("il62/lit/gydro/pump1", 0)
il62_lit_gydro_pump2=createGlobalPropertyf("il62/lit/gydro/pump2", 0)
il62_lit_gydro_pump3=createGlobalPropertyf("il62/lit/gydro/pump3", 0)
il62_lit_gydro_pump4=createGlobalPropertyf("il62/lit/gydro/pump4", 0)
il62_lit_gydro_pumpstation=createGlobalPropertyf("il62/lit/gydro/pumpstation", 0)
il62_lit_gydro_firecrane1=createGlobalPropertyf("il62/lit/gydro/firecrane1", 0)
il62_lit_gydro_firecrane2=createGlobalPropertyf("il62/lit/gydro/firecrane2", 0)
il62_lit_gydro_firecrane3=createGlobalPropertyf("il62/lit/gydro/firecrane3", 0)
il62_lit_gydro_firecrane4=createGlobalPropertyf("il62/lit/gydro/firecrane4", 0)

il62_lit_leftrollbig=createGlobalPropertyf("il62/lit/leftrollbig", 0)
il62_lit_contolunsafe=createGlobalPropertyf("il62/lit/contolunsafe", 0)
il62_lit_alphabig=createGlobalPropertyf("il62/lit/alphabig", 0)
il62_lit_controlspeed=createGlobalPropertyf("il62/lit/controlspeed", 0)
il62_lit_controlstab=createGlobalPropertyf("il62/lit/controlstab", 0)
il62_lit_controlpitch=createGlobalPropertyf("il62/lit/controlpitch", 0)
il62_lit_60800=createGlobalPropertyf("il62/lit/60800", 0)
il62_lit_rightrollbig=createGlobalPropertyf("il62/lit/rightrollbig", 0)

il62_lit_kursstable=createGlobalPropertyf("il62/lit/kursstable", 0)
il62_lit_course=createGlobalPropertyf("il62/lit/course", 0)
il62_lit_zk=createGlobalPropertyf("il62/lit/zk", 0)
il62_lit_zpu=createGlobalPropertyf("il62/lit/zpu", 0)
il62_lit_glideslope=createGlobalPropertyf("il62/lit/glideslope", 0)
il62_lit_kv=createGlobalPropertyf("il62/lit/kv", 0)
il62_lit_machspeed=createGlobalPropertyf("il62/lit/machspeed", 0)
il62_lit_at=createGlobalPropertyf("il62/lit/at", 0)
il62_lit_aps=createGlobalPropertyf("il62/lit/aps", 0)
il62_lit_controlnv=createGlobalPropertyf("il62/lit/controlnv", 0)
il62_lit_rotate=createGlobalPropertyf("il62/lit/rotate", 0)
il62_lit_npm=createGlobalPropertyf("il62/lit/npm", 0)
il62_lit_bprm=createGlobalPropertyf("il62/lit/bprm", 0)
il62_lit_sprm=createGlobalPropertyf("il62/lit/sprm", 0)
il62_lit_dprm=createGlobalPropertyf("il62/lit/dprm", 0)
il62_lit_altcheck=createGlobalPropertyf("il62/lit/altcheck", 0)
il62_lit_cgverror=createGlobalPropertyf("il62/lit/cgverror", 0)


il62_lit_eng1_vibr=createGlobalPropertyf("il62/lit/eng1/vibr", 0)
il62_lit_eng1_oil_er=createGlobalPropertyf("il62/lit/eng1/oil_er", 0)
il62_lit_eng1_restart_air=createGlobalPropertyf("il62/lit/eng1/restart_air", 0)
il62_lit_eng1_reverse=createGlobalPropertyf("il62/lit/eng1/reverse", 0)
il62_lit_eng1_vna5=createGlobalPropertyf("il62/lit/eng1/vna5", 0)
il62_lit_eng1_vna35=createGlobalPropertyf("il62/lit/eng1/vna35", 0)
il62_lit_eng1_minpresfuel=createGlobalPropertyf("il62/lit/eng1/minpresfuel", 0)
il62_lit_eng1_minpresoil=createGlobalPropertyf("il62/lit/eng1/minpresoil", 0)
il62_lit_eng1_fuellow=createGlobalPropertyf("il62/lit/eng1/fuellow", 0)
il62_lit_eng1_fuelfiltEr=createGlobalPropertyf("il62/lit/eng1/fuelfiltEr", 0)

il62_lit_eng2_vibr=createGlobalPropertyf("il62/lit/eng2/vibr", 0)
il62_lit_eng2_oil_er=createGlobalPropertyf("il62/lit/eng2/oil_er", 0)
il62_lit_eng2_restart_air=createGlobalPropertyf("il62/lit/eng2/restart_air", 0)
il62_lit_eng2_reverse=createGlobalPropertyf("il62/lit/eng2/reverse", 0)
il62_lit_eng2_vna5=createGlobalPropertyf("il62/lit/eng2/vna5", 0)
il62_lit_eng2_vna35=createGlobalPropertyf("il62/lit/eng2/vna35", 0)
il62_lit_eng2_minpresfuel=createGlobalPropertyf("il62/lit/eng2/minpresfuel", 0)
il62_lit_eng2_minpresoil=createGlobalPropertyf("il62/lit/eng2/minpresoil", 0)
il62_lit_eng2_fuellow=createGlobalPropertyf("il62/lit/eng2/fuellow", 0)
il62_lit_eng2_fuelfiltEr=createGlobalPropertyf("il62/lit/eng2/fuelfiltEr", 0)

il62_lit_eng3_vibr=createGlobalPropertyf("il62/lit/eng3/vibr", 0)
il62_lit_eng3_oil_er=createGlobalPropertyf("il62/lit/eng3/oil_er", 0)
il62_lit_eng3_restart_air=createGlobalPropertyf("il62/lit/eng3/restart_air", 0)
il62_lit_eng3_reverse=createGlobalPropertyf("il62/lit/eng3/reverse", 0)
il62_lit_eng3_vna5=createGlobalPropertyf("il62/lit/eng3/vna5", 0)
il62_lit_eng3_vna35=createGlobalPropertyf("il62/lit/eng3/vna35", 0)
il62_lit_eng3_minpresfuel=createGlobalPropertyf("il62/lit/eng3/minpresfuel", 0)
il62_lit_eng3_minpresoil=createGlobalPropertyf("il62/lit/eng3/minpresoil", 0)
il62_lit_eng3_fuellow=createGlobalPropertyf("il62/lit/eng3/fuellow", 0)
il62_lit_eng3_fuelfiltEr=createGlobalPropertyf("il62/lit/eng3/fuelfiltEr", 0)

il62_lit_eng4_vibr=createGlobalPropertyf("il62/lit/eng4/vibr", 0)
il62_lit_eng4_oil_er=createGlobalPropertyf("il62/lit/eng4/oil_er", 0)
il62_lit_eng4_restart_air=createGlobalPropertyf("il62/lit/eng4/restart_air", 0)
il62_lit_eng4_reverse=createGlobalPropertyf("il62/lit/eng4/reverse", 0)
il62_lit_eng4_vna5=createGlobalPropertyf("il62/lit/eng4/vna5", 0)
il62_lit_eng4_vna35=createGlobalPropertyf("il62/lit/eng4/vna35", 0)
il62_lit_eng4_minpresfuel=createGlobalPropertyf("il62/lit/eng4/minpresfuel", 0)
il62_lit_eng4_minpresoil=createGlobalPropertyf("il62/lit/eng4/minpresoil", 0)
il62_lit_eng4_fuellow=createGlobalPropertyf("il62/lit/eng4/fuellow", 0)
il62_lit_eng4_fuelfiltEr=createGlobalPropertyf("il62/lit/eng4/fuelfiltEr", 0)



il62_lit_eng_reverse=createGlobalPropertyf("il62/lit/eng_reverse", 0)



apu_per=createGlobalPropertyf("il62/lit/apu_perenapr", 0)
apu_dc_wr=createGlobalPropertyf("il62/lit/apu_dc_wr", 0)
vu1_lit=createGlobalPropertyf("il62/lit/vu1", 0)
vu2_lit=createGlobalPropertyf("il62/lit/vu2", 0)
vu3_lit=createGlobalPropertyf("il62/lit/vu3", 0)
vu4_lit=createGlobalPropertyf("il62/lit/vu4", 0)
apu_ac_wr=createGlobalPropertyf("il62/lit/apu_ac_wr", 0)
gen1_lit=createGlobalPropertyf("il62/lit/gen1", 0)
gen2_lit=createGlobalPropertyf("il62/lit/gen2", 0)
gen3_lit=createGlobalPropertyf("il62/lit/gen3", 0)
gen4_lit=createGlobalPropertyf("il62/lit/gen4", 0)
par1=createGlobalPropertyf("il62/lit/par1", 0)
par2=createGlobalPropertyf("il62/lit/par2", 0)
par3=createGlobalPropertyf("il62/lit/par3", 0)
par4=createGlobalPropertyf("il62/lit/par4", 0)
pnkL=createGlobalPropertyf("il62/lit/pnkL", 0)
pnkR=createGlobalPropertyf("il62/lit/pnkR", 0)



--Navigation
type_hsi_nav=createGlobalPropertyf("il62/nav/type_nav", 1)



--tcs-p--
fi_nastr=createGlobalPropertyf("il62/nav/tcsp/fi_nastr", 0)
hdg_chgp=createGlobalPropertyf("il62/nav/tcsp/hdg_chgp", 0)
hdg_chgm=createGlobalPropertyf("il62/nav/tcsp/hdg_chgm", 0)
hdg_chg=createGlobalPropertyf("il62/nav/tcsp/hdg_chg", 0)
potr=createGlobalPropertyf("il62/nav/tcsp/potr", 0)
korr=createGlobalPropertyf("il62/nav/tcsp/korr", 0)
sogl=createGlobalPropertyf("il62/nav/tcsp/sogl", 0)
type_komp=createGlobalPropertyf("il62/nav/tcsp/type_komp", 0)
type_fi=createGlobalPropertyf("il62/nav/tcsp/type_fi", 0)



--nvpb--

nvpb_lzp_number=createGlobalPropertyf("il62/nav/nvpb/lzp_number", 0)
nvpb_go_cho=createGlobalPropertyf("il62/nav/nvpb/go_cho", 0)
nvpb_schisl=createGlobalPropertyf("il62/nav/nvpb/schisl", 0)
nvpb_prog_ppm=createGlobalPropertyf("il62/nav/nvpb/prog_ppm", 0)
nvpb_power=createGlobalPropertyf("il62/nav/nvpb/power", 0)
nvpb_korr=createGlobalPropertyf("il62/nav/nvpb/korr", 0)
nvpb_g_t=createGlobalPropertyf("il62/nav/nvpb/g_t", 0)
nvpb_ks=createGlobalPropertyf("il62/nav/nvpb/ks", 0)
nvpb_kr=createGlobalPropertyf("il62/nav/nvpb/kr", 0)
nvpb_znp=createGlobalPropertyf("il62/nav/nvpb/znp", 0)
nvpb_p2_up=createGlobalPropertyf("il62/nav/nvpb/p2_up", 0)
nvpb_p2_down=createGlobalPropertyf("il62/nav/nvpb/p2_down", 0)
nvpb_p3_up=createGlobalPropertyf("il62/nav/nvpb/p3_up", 0)
nvpb_p3_down=createGlobalPropertyf("il62/nav/nvpb/p3_down", 0)
round_l_r=createGlobalPropertyf("il62/nav/nvpb/round", 0)
prog=createGlobalPropertyf("il62/nav/nvpb/prog", 0)
std_man=createGlobalPropertyf("il62/nav/nvpb/std_man", 0)
p31_ppm1=createGlobalPropertyf("il62/nav/nvpb/ppm1", 0)
p31_ppm2=createGlobalPropertyf("il62/nav/nvpb/ppm2", 0)
p31_ppm3=createGlobalPropertyf("il62/nav/nvpb/ppm3", 0)
p31_ppm4=createGlobalPropertyf("il62/nav/nvpb/ppm4", 0)
p31_ppm5=createGlobalPropertyf("il62/nav/nvpb/ppm5", 0)
p31_ppm6=createGlobalPropertyf("il62/nav/nvpb/ppm6", 0)
p31_ppm7=createGlobalPropertyf("il62/nav/nvpb/ppm7", 0)
p31_ppm8=createGlobalPropertyf("il62/nav/nvpb/ppm8", 0)
p31_ppm9=createGlobalPropertyf("il62/nav/nvpb/ppm9", 0)
p31_ppm10=createGlobalPropertyf("il62/nav/nvpb/ppm10", 0)

oMbokXxx=createGlobalPropertyf("il62/nav/nvpb/oMbokXxx", 0)
oMbokxXx=createGlobalPropertyf("il62/nav/nvpb/oMbokxXx", 0)
oMbokxxX=createGlobalPropertyf("il62/nav/nvpb/oMbokxxX", 0)
oPbokXxx=createGlobalPropertyf("il62/nav/nvpb/oPbokXxx", 0)
oPbokxXx=createGlobalPropertyf("il62/nav/nvpb/oPbokxXx", 0)
oPbokxxX=createGlobalPropertyf("il62/nav/nvpb/oPbokxxX", 0)

sMbokXxx=createGlobalPropertyf("il62/nav/nvpb/sMbokXxx", 0)
sMbokxXx=createGlobalPropertyf("il62/nav/nvpb/sMbokxXx", 0)
sMbokxxX=createGlobalPropertyf("il62/nav/nvpb/sMbokxxX", 0)
sPbokXxx=createGlobalPropertyf("il62/nav/nvpb/sPbokXxx", 0)
sPbokxXx=createGlobalPropertyf("il62/nav/nvpb/sPbokxXx", 0)
sPbokxxX=createGlobalPropertyf("il62/nav/nvpb/sPbokxxX", 0)



oMLengthXxxx=createGlobalPropertyf("il62/nav/nvpb/oMLengthXxxx", 0)
oMLengthxXxx=createGlobalPropertyf("il62/nav/nvpb/oMLengthxXxx", 0)
oMLengthxxXx=createGlobalPropertyf("il62/nav/nvpb/oMLengthxxXx", 0)
oMLengthxxxX=createGlobalPropertyf("il62/nav/nvpb/oMLengthxxxX", 0)
oPLengthXxxx=createGlobalPropertyf("il62/nav/nvpb/oPLengthXxxx", 0)
oPLengthxXxx=createGlobalPropertyf("il62/nav/nvpb/oPLengthxXxx", 0)
oPLengthxxXx=createGlobalPropertyf("il62/nav/nvpb/oPLengthxxXx", 0)
oPLengthxxxX=createGlobalPropertyf("il62/nav/nvpb/oPLengthxxxX", 0)

sMLengthXxxx=createGlobalPropertyf("il62/nav/nvpb/sMLengthXxxx", 0)
sMLengthxXxx=createGlobalPropertyf("il62/nav/nvpb/sMLengthxXxx", 0)
sMLengthxxXx=createGlobalPropertyf("il62/nav/nvpb/sMLengthxxXx", 0)
sMLengthxxxX=createGlobalPropertyf("il62/nav/nvpb/sMLengthxxxX", 0)
sPLengthXxxx=createGlobalPropertyf("il62/nav/nvpb/sPLengthXxxx", 0)
sPLengthxXxx=createGlobalPropertyf("il62/nav/nvpb/sPLengthxXxx", 0)
sPLengthxxXx=createGlobalPropertyf("il62/nav/nvpb/sPLengthxxXx", 0)
sPLengthxxxX=createGlobalPropertyf("il62/nav/nvpb/sPLengthxxxX", 0)



XZcoordMXxx=createGlobalPropertyf("il62/nav/nvpb/XZcoordMXxx", 0)
XZcoordMxXx=createGlobalPropertyf("il62/nav/nvpb/XZcoordMxXx", 0)
XZcoordMxxX=createGlobalPropertyf("il62/nav/nvpb/XZcoordMxxX", 0)
XZcoordPXxx=createGlobalPropertyf("il62/nav/nvpb/XZcoordPXxx", 0)
XZcoordPxXx=createGlobalPropertyf("il62/nav/nvpb/XZcoordPxXx", 0)
XZcoordPxxX=createGlobalPropertyf("il62/nav/nvpb/XZcoordPxxX", 0)

YScoordMXxxx=createGlobalPropertyf("il62/nav/nvpb/YScoordMXxxx", 0)
YScoordMxXxx=createGlobalPropertyf("il62/nav/nvpb/YScoordMxXxx", 0)
YScoordMxxXx=createGlobalPropertyf("il62/nav/nvpb/YScoordMxxXx", 0)
YScoordMxxxX=createGlobalPropertyf("il62/nav/nvpb/YScoordMxxxX", 0)
YScoordPXxxx=createGlobalPropertyf("il62/nav/nvpb/YScoordPXxxx", 0)
YScoordPxXxx=createGlobalPropertyf("il62/nav/nvpb/YScoordPxXxx", 0)
YScoordPxxXx=createGlobalPropertyf("il62/nav/nvpb/YScoordPxxXx", 0)
YScoordPxxxX=createGlobalPropertyf("il62/nav/nvpb/YScoordPxxxX", 0)

XZPcoordMXxx=createGlobalPropertyf("il62/nav/nvpb/XZPcoordMXxx", 0)
XZPcoordMxXx=createGlobalPropertyf("il62/nav/nvpb/XZPcoordMxXx", 0)
XZPcoordMxxX=createGlobalPropertyf("il62/nav/nvpb/XZPcoordMxxX", 0)
XZPcoordPXxx=createGlobalPropertyf("il62/nav/nvpb/XZPcoordPXxx", 0)
XZPcoordPxXx=createGlobalPropertyf("il62/nav/nvpb/XZPcoordPxXx", 0)
XZPcoordPxxX=createGlobalPropertyf("il62/nav/nvpb/XZPcoordPxxX", 0)

YSPcoordMXxxx=createGlobalPropertyf("il62/nav/nvpb/YSPcoordMXxxx", 0)
YSPcoordMxXxx=createGlobalPropertyf("il62/nav/nvpb/YSPcoordMxXxx", 0)
YSPcoordMxxXx=createGlobalPropertyf("il62/nav/nvpb/YSPcoordMxxXx", 0)
YSPcoordMxxxX=createGlobalPropertyf("il62/nav/nvpb/YSPcoordMxxxX", 0)
YSPcoordPXxxx=createGlobalPropertyf("il62/nav/nvpb/YSPcoordPXxxx", 0)
YSPcoordPxXxx=createGlobalPropertyf("il62/nav/nvpb/YSPcoordPxXxx", 0)
YSPcoordPxxXx=createGlobalPropertyf("il62/nav/nvpb/YSPcoordPxxXx", 0)
YSPcoordPxxxX=createGlobalPropertyf("il62/nav/nvpb/YSPcoordPxxxX", 0)

x1=createGlobalPropertyf("il62/nav/nvpb/x1", 0)
x2=createGlobalPropertyf("il62/nav/nvpb/x2", 0)
x3=createGlobalPropertyf("il62/nav/nvpb/x3", 0)
x4=createGlobalPropertyf("il62/nav/nvpb/x4", 0)
x5=createGlobalPropertyf("il62/nav/nvpb/x5", 0)
x6=createGlobalPropertyf("il62/nav/nvpb/x6", 0)
x7=createGlobalPropertyf("il62/nav/nvpb/x7", 0)
x8=createGlobalPropertyf("il62/nav/nvpb/x8", 0)
x9=createGlobalPropertyf("il62/nav/nvpb/x9", 0)
x10=createGlobalPropertyf("il62/nav/nvpb/x10", 0)

y1=createGlobalPropertyf("il62/nav/nvpb/y1", 0)
y2=createGlobalPropertyf("il62/nav/nvpb/y2", 0)
y3=createGlobalPropertyf("il62/nav/nvpb/y3", 0)
y4=createGlobalPropertyf("il62/nav/nvpb/y4", 0)
y5=createGlobalPropertyf("il62/nav/nvpb/y5", 0)
y6=createGlobalPropertyf("il62/nav/nvpb/y6", 0)
y7=createGlobalPropertyf("il62/nav/nvpb/y7", 0)
y8=createGlobalPropertyf("il62/nav/nvpb/y8", 0)
y9=createGlobalPropertyf("il62/nav/nvpb/y9", 0)
y10=createGlobalPropertyf("il62/nav/nvpb/y10", 0)


oPuB=createGlobalPropertyf("il62/nav/nvpb/oPuKB", 0)
oPuM=createGlobalPropertyf("il62/nav/nvpb/oPuKM", 0)
sPuB=createGlobalPropertyf("il62/nav/nvpb/sPuKB", 0)
sPuM=createGlobalPropertyf("il62/nav/nvpb/sPuKM", 0)
---------------------------------------------------------------------

kushOst=createGlobalPropertyf("il62/nav/nvpb/kushOst", 0)
kushOpl=createGlobalPropertyf("il62/nav/nvpb/kushOpl", 0)
kushO_type1=createGlobalPropertyf("il62/nav/nvpb/kushO_type1", 0)
kushO_type2=createGlobalPropertyf("il62/nav/nvpb/kushO_type2", 0)
kushO_type3=createGlobalPropertyf("il62/nav/nvpb/kushO_type3", 0)


kushSst=createGlobalPropertyf("il62/nav/nvpb/kushSst", 0)
kushSpl=createGlobalPropertyf("il62/nav/nvpb/kushSpl", 0)
kushS_type1=createGlobalPropertyf("il62/nav/nvpb/kushS_type1", 0)
kushS_type2=createGlobalPropertyf("il62/nav/nvpb/kushS_type2", 0)
kushS_type3=createGlobalPropertyf("il62/nav/nvpb/kushS_type3", 0)

ushdbO=createGlobalPropertyf("il62/nav/kursmp/ushdbO", 0)
ushdbS=createGlobalPropertyf("il62/nav/kursmp/ushdbS", 0)



--kursmp--
freqOXxxxx=createGlobalPropertyf("il62/nav/kursmp/freqO/Xxxxx", 0)
freqOxXxxx=createGlobalPropertyf("il62/nav/kursmp/freqO/xXxxx", 0)
freqOxxXxx=createGlobalPropertyf("il62/nav/kursmp/freqO/xxXxx", 0)
freqOxxxXx=createGlobalPropertyf("il62/nav/kursmp/freqO/xxxXx", 0)
freqOxxxxX=createGlobalPropertyf("il62/nav/kursmp/freqO/xxxxX", 0)

freqSXxxxx=createGlobalPropertyf("il62/nav/kursmp/freqS/Xxxxx", 0)
freqSxXxxx=createGlobalPropertyf("il62/nav/kursmp/freqS/xXxxx", 0)
freqSxxXxx=createGlobalPropertyf("il62/nav/kursmp/freqS/xxXxx", 0)
freqSxxxXx=createGlobalPropertyf("il62/nav/kursmp/freqS/xxxXx", 0)
freqSxxxxX=createGlobalPropertyf("il62/nav/kursmp/freqS/xxxxX", 0)

hdgOXxx=createGlobalPropertyf("il62/nav/kursmp/hdgO/Xxx", 0)
hdgOxXx=createGlobalPropertyf("il62/nav/kursmp/hdgO/xXx", 0)
hdgOxxX=createGlobalPropertyf("il62/nav/kursmp/hdgO/xxX", 0)

hdgSXxx=createGlobalPropertyf("il62/nav/kursmp/hdgS/Xxx", 0)
hdgSxXx=createGlobalPropertyf("il62/nav/kursmp/hdgS/xXx", 0)
hdgSxxX=createGlobalPropertyf("il62/nav/kursmp/hdgS/xxX", 0)

freqOrhcL=createGlobalPropertyf("il62/nav/kursmp/freqO/rhcL", 0)
freqOrhcB=createGlobalPropertyf("il62/nav/kursmp/freqO/rhcB", 0)

freqSrhcL=createGlobalPropertyf("il62/nav/kursmp/freqS/rhcL", 0)
freqSrhcB=createGlobalPropertyf("il62/nav/kursmp/freqS/rhcB", 0)

shturm_nav1_type=createGlobalPropertyf("il62/nav/kursmp/shturm_nav1_type", 0)
shturm_nav2_type=createGlobalPropertyf("il62/nav/kursmp/shturm_nav2_type", 0)



--ark15
freq_o_sot=createGlobalPropertyf("il62/nav/arkpyatO/freq_o/sot", 0)
freq_o_des=createGlobalPropertyf("il62/nav/arkpyatO/freq_o/des", 0)
freq_o_one=createGlobalPropertyf("il62/nav/arkpyatO/freq_o/one", 0)

freq_s_sot=createGlobalPropertyf("il62/nav/arkpyatO/freq_s/sot", 0)
freq_s_des=createGlobalPropertyf("il62/nav/arkpyatO/freq_s/des", 0)
freq_s_one=createGlobalPropertyf("il62/nav/arkpyatO/freq_s/one", 0)

rejim=createGlobalPropertyf("il62/nav/arkpyatO/rejim", 0)
chanel=createGlobalPropertyf("il62/nav/arkpyatO/chanel", 0)
tlf=createGlobalPropertyf("il62/nav/arkpyatO/tlf", 0)
volume=createGlobalPropertyf("il62/nav/arkpyatO/volume", 0)


--nav_push


oLengL=createGlobalPropertyf("il62/nav/Bnvpb/oLengL", 0)
oLengM=createGlobalPropertyf("il62/nav/Bnvpb/oLengM", 0)
oLengR=createGlobalPropertyf("il62/nav/Bnvpb/oLengR", 0)

SLengL=createGlobalPropertyf("il62/nav/Bnvpb/SLengL", 0)
SLengM=createGlobalPropertyf("il62/nav/Bnvpb/SLengM", 0)
SLengR=createGlobalPropertyf("il62/nav/Bnvpb/SLengR", 0)

YScoordL=createGlobalPropertyf("il62/nav/Bnvpb/YScoordL", 0)
YScoordM=createGlobalPropertyf("il62/nav/Bnvpb/YScoordM", 0)
YScoordR=createGlobalPropertyf("il62/nav/Bnvpb/YScoordR", 0)

YSPcoordL=createGlobalPropertyf("il62/nav/Bnvpb/YSPcoordL", 0)
YSPcoordM=createGlobalPropertyf("il62/nav/Bnvpb/YSPcoordM", 0)
YSPcoordR=createGlobalPropertyf("il62/nav/Bnvpb/YSPcoordR", 0)

oBokL=createGlobalPropertyf("il62/nav/Bnvpb/oBokL", 0)
oBokM=createGlobalPropertyf("il62/nav/Bnvpb/oBokM", 0)
oBokR=createGlobalPropertyf("il62/nav/Bnvpb/oBokR", 0)

SBokL=createGlobalPropertyf("il62/nav/Bnvpb/SBokL", 0)
SBokM=createGlobalPropertyf("il62/nav/Bnvpb/SBokM", 0)
SBokR=createGlobalPropertyf("il62/nav/Bnvpb/SBokR", 0)

XZcoordL=createGlobalPropertyf("il62/nav/Bnvpb/XZcoordL", 0)
XZcoordM=createGlobalPropertyf("il62/nav/Bnvpb/XZcoordM", 0)
XZcoordR=createGlobalPropertyf("il62/nav/Bnvpb/XZcoordR", 0)

XZPcoordL=createGlobalPropertyf("il62/nav/Bnvpb/XZPcoordL", 0)
XZPcoordM=createGlobalPropertyf("il62/nav/Bnvpb/XZPcoordM", 0)
XZPcoordR=createGlobalPropertyf("il62/nav/Bnvpb/XZPcoordR", 0)

oPuL=createGlobalPropertyf("il62/nav/Bnvpb/oPuL", 0)
oPuM=createGlobalPropertyf("il62/nav/Bnvpb/oPuM", 0)
oPuR=createGlobalPropertyf("il62/nav/Bnvpb/oPuR", 0)

sPuL=createGlobalPropertyf("il62/nav/Bnvpb/sPuL", 0)
sPuM=createGlobalPropertyf("il62/nav/Bnvpb/sPuM", 0)
sPuR=createGlobalPropertyf("il62/nav/Bnvpb/sPuR", 0)






---------------------------------------------------------------------------------

--pribory
sturm_var=createGlobalPropertyf("il62/prbr/sturm_var", 0) --metr -30;30
sturm_alt=createGlobalPropertyf("il62/prbr/sturm_alt", 0) --metr  0;100
sturm_speed_sec=createGlobalPropertyf("il62/prbr/sturm_speed_sec", 0) --km/ch
sturm_speed_frs_b=createGlobalPropertyf("il62/prbr/sturm_speed_frs_b", 0) --km/ch
sturm_speed_frs_l=createGlobalPropertyf("il62/prbr/sturm_speed_frs_l", 0) --km/ch



white_light=createGlobalPropertyf("il62/kvs/lights/white", 0)
red_light=createGlobalPropertyf("il62/kvs/lights/red", 0)

--[[
vbe_alt_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_alt_left", 0)
vbe_press_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_press_left", 0)
vbe_brt_lef=createGlobalPropertyf("sim/custom/gauges/alt/vbe_brt_left", 0)
vbe_press_knob_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_press_knob_left", 0)
vbe_fl_knob_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_fl_knob_left", 0)
vbe_mode_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_mode_left", 0)

vbe_flightlevel_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_flightlevel_left", 0)
vbe_mode_but_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_mode_but_left", 0)

vbe_1_on=createGlobalPropertyf("sim/custom/switchers/ovhd/vbe_1_on", 0)
vbe_std_left=createGlobalPropertyf("sim/custom/gauges/alt/vbe_std_left", 0)
sensors_caps=createGlobalPropertyf("sim/custom/anim/sensors_caps", 0)
ismaster=createGlobalPropertyf("scp/api/ismaster", 0)
hascontrol_1=createGlobalPropertyf("scp/api/hascontrol_1", 0)
]]



main_cargo_door=createGlobalPropertyf("il62/doors/main_cargo", 0)
pass_main=createGlobalPropertyf("il62/doors/main_pass", 0)

gear_stv_l=createGlobalPropertyf("il62/gears/stv_l", 0)
gear_stv_r=createGlobalPropertyf("il62/gears/stv_r", 0)
nosewheel_stvLbig=createGlobalPropertyf("il62/gears/nosewheel/stvLbig", 0)
nosewheel_stvRbig=createGlobalPropertyf("il62/gears/nosewheel/stvRbig", 0)
nosewheel_stvLsmall=createGlobalPropertyf("il62/gears/nosewheel/stvLsmall", 1)
nosewheel_stvRsmall=createGlobalPropertyf("il62/gears/nosewheel/stvRsmall", 1)