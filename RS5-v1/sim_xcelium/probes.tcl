

# % cat probes.tcl
database -open waves -into waves.shm -event -default
probe -create test -depth all -tasks -functions -all -database waves
run

# % xrun -input probes.tcl