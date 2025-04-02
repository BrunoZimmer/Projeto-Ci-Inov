
vlog -cover sbcefx ../rtl/aes/*.sv
vlog -cover sbcefx ../rtl/*.sv
vlog -cover sbcefx *.sv
vsim -voptargs=+acc -coverage work.testbench
do wave_simple.do
coverage save coverage
run -all
coverage report -output report.txt -srcfile=* -assert -directive -cvg -codeAll
