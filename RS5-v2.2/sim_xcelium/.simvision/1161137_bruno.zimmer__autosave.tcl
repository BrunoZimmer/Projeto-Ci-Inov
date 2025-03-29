
# XM-Sim Command File
# TOOL:	xmsim(64)	23.09-s013
#

set tcl_prompt1 {puts -nonewline "xcelium> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
set vcd_compact_mode 0
set vhdl_forgen_loopindex_enum_pos 0
set tcl_sigval_prefix {#}
alias . run
alias indago verisium
alias quit exit
database -open -shm -into waves.shm waves -default -event
probe -create -database waves testbench.dut.instruction_operation_execute testbench.dut.accel_mem_en testbench.dut.accel_mem_data testbench.dut.accel_mem_address testbench.dut.accel_en testbench.dut.fft.out0_i testbench.dut.fft.out0_r testbench.dut.fft.out1_i testbench.dut.fft.out1_r testbench.dut.fft.out2_i testbench.dut.fft.out2_r testbench.dut.fft.out3_i testbench.dut.fft.out3_r testbench.dut.fft.out4_i testbench.dut.fft.out4_r testbench.dut.fft.out5_i testbench.dut.fft.out5_r testbench.dut.fft.in0_r testbench.dut.fft.in1_r testbench.dut.fft.in2_r testbench.dut.fft.in3_r testbench.dut.fft.in4_r testbench.dut.fft.in5_r

simvision -input /home/ic/bruno.zimmer/Documents/Projeto/RS5-v2.2/sim_xcelium/.simvision/1161137_bruno.zimmer__autosave.tcl.svcf
