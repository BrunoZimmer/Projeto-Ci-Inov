
# Power / Power Analysis / Setup

set_power_analysis_mode \
-method static \
-analysis_view AV1 \
-corner max \
-create_binary_db true \
-write_static_currents true \
-honor_negative_energy true \
-ignore_control_signals true

# Power / Power Analysis / Run

set_power_output_dir -reset
set_power_output_dir ./power_analysis_0
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 4.0
read_activity_file -reset
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset

report_power -rail_analysis_format VS -outfile ./power_analysis_0/rs5.rpt

# Power / Rail Analysis / Setup Rail Analysis

set_rail_analysis_mode \
-method era_static \
-power_switch_eco false \
-generate_movies false \
-save_voltage_waveforms false \
-accuracy xd \
-analysis_view AV1 \
-process_techgen_em_rules false \
-enable_rlrp_analysis false \ 
-extraction_tech_file /home/ic/bruno.zimmer/FLP/gpdk045_workspace/gpdk045_v_6_0/qrc/rcworst/qrcTechFile \
-vsrc_search_distance 50 \
-ignore_shorts false \
-enable_manufacturing_effects false \
-report_via_current_direction false

# Power / Rail Analysis / Run Rail Analysis

set_pg_nets -net VDD -voltage 0.9 -threshold 0.885
# set_power_data -reset
# set_power_data -format current -scale 1 power_analysis_0/static_VDD.ptiavg
# set_power_pads -reset
# set_power_pads -net VDD -format xy -file ../io/mac.pp
set_package -reset
set_package -spice {} -mapping {}
set_net_group -reset
set_advanced_rail_options -reset

analyze_rail -type net -results_directory power_analysis_0 VDD

# Importar o DB gerado para a memoria (nao tem na GUI!)

read_power_rail_results \
  -power_db power_analysis_0/power.db \
  -rail_directory power_analysis_0/VDD_25C_avg_1

