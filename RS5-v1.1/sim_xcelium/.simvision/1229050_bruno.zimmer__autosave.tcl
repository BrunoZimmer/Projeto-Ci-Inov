
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
probe -create -database waves testbench.dut.FFT_CORE.assign_out testbench.dut.FFT_CORE.clk testbench.dut.FFT_CORE.count_y testbench.dut.FFT_CORE.din_i testbench.dut.FFT_CORE.din_i_reg testbench.dut.FFT_CORE.din_i_wire testbench.dut.FFT_CORE.din_r testbench.dut.FFT_CORE.din_r_reg testbench.dut.FFT_CORE.din_r_wire testbench.dut.FFT_CORE.dout_i testbench.dut.FFT_CORE.dout_r testbench.dut.FFT_CORE.i testbench.dut.FFT_CORE.in_valid testbench.dut.FFT_CORE.in_valid_reg testbench.dut.FFT_CORE.next_count_y testbench.dut.FFT_CORE.next_dout_i testbench.dut.FFT_CORE.next_dout_r testbench.dut.FFT_CORE.next_out_valid testbench.dut.FFT_CORE.next_over testbench.dut.FFT_CORE.next_r4_valid testbench.dut.FFT_CORE.next_s5_count testbench.dut.FFT_CORE.no5_state testbench.dut.FFT_CORE.out_i testbench.dut.FFT_CORE.out_r testbench.dut.FFT_CORE.out_valid testbench.dut.FFT_CORE.over testbench.dut.FFT_CORE.r4_valid testbench.dut.FFT_CORE.radix_no1_delay_i testbench.dut.FFT_CORE.radix_no1_delay_r testbench.dut.FFT_CORE.radix_no1_op_i testbench.dut.FFT_CORE.radix_no1_op_r testbench.dut.FFT_CORE.radix_no1_outvalid testbench.dut.FFT_CORE.radix_no2_delay_i testbench.dut.FFT_CORE.radix_no2_delay_r testbench.dut.FFT_CORE.radix_no2_op_i testbench.dut.FFT_CORE.radix_no2_op_r testbench.dut.FFT_CORE.radix_no2_outvalid testbench.dut.FFT_CORE.radix_no3_delay_i testbench.dut.FFT_CORE.radix_no3_delay_r testbench.dut.FFT_CORE.radix_no3_op_i testbench.dut.FFT_CORE.radix_no3_op_r testbench.dut.FFT_CORE.radix_no3_outvalid testbench.dut.FFT_CORE.radix_no4_delay_i testbench.dut.FFT_CORE.radix_no4_delay_r testbench.dut.FFT_CORE.radix_no4_op_i testbench.dut.FFT_CORE.radix_no4_op_r testbench.dut.FFT_CORE.radix_no4_outvalid testbench.dut.FFT_CORE.radix_no5_delay_i testbench.dut.FFT_CORE.radix_no5_delay_r testbench.dut.FFT_CORE.radix_no5_op_i testbench.dut.FFT_CORE.radix_no5_op_r testbench.dut.FFT_CORE.reset testbench.dut.FFT_CORE.result_i testbench.dut.FFT_CORE.result_i_ns testbench.dut.FFT_CORE.result_r testbench.dut.FFT_CORE.result_r_ns testbench.dut.FFT_CORE.rom2_state testbench.dut.FFT_CORE.rom2_w_i testbench.dut.FFT_CORE.rom2_w_r testbench.dut.FFT_CORE.rom4_state testbench.dut.FFT_CORE.rom4_w_i testbench.dut.FFT_CORE.rom4_w_r testbench.dut.FFT_CORE.rom8_state testbench.dut.FFT_CORE.rom8_w_i testbench.dut.FFT_CORE.rom8_w_r testbench.dut.FFT_CORE.rom16_state testbench.dut.FFT_CORE.rom16_w_i testbench.dut.FFT_CORE.rom16_w_r testbench.dut.FFT_CORE.s5_count testbench.dut.FFT_CORE.shift_1_dout_i testbench.dut.FFT_CORE.shift_1_dout_r testbench.dut.FFT_CORE.shift_2_dout_i testbench.dut.FFT_CORE.shift_2_dout_r testbench.dut.FFT_CORE.shift_4_dout_i testbench.dut.FFT_CORE.shift_4_dout_r testbench.dut.FFT_CORE.shift_8_dout_i testbench.dut.FFT_CORE.shift_8_dout_r testbench.dut.FFT_CORE.shift_16_dout_i testbench.dut.FFT_CORE.shift_16_dout_r testbench.dut.FFT_CORE.y_1 testbench.dut.FFT_CORE.y_1_delay

simvision -input /home/ic/bruno.zimmer/Documents/Projeto/RS5-v1.1/sim_xcelium/.simvision/1229050_bruno.zimmer__autosave.tcl.svcf
