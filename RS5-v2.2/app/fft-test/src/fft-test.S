.section .init
.global _start
_start:
    # Configure system status MPP=0, MPIE=0, MIE=0
	csrw	mstatus, zero

	# Mask interrupts
	csrw	mie, zero

	# Clear pending interrupts
	csrw	mip, zero

    # Set stack to top of data memory
	li		sp, MEM_SIZE

    jal main
.end:
    li  t0, 0x80000000
    sw	zero, 0(t0)     # End simulation
	j   .end

.section .text
main:

    
    li t0, 0
    li t1, 0
    or s0, t0, t1
    or s0, t0, t1
    or s0, t0, t1
    or s0, t0, t1
    or s0, t0, t1
    or s0, t0, t1
    or s0, t0, t1
    or s0, t0, t1

    li t0, 1
    li t1,-1700
    or s0, t0, t1
    or s0, t0, t1

    li t0, 2
    li t1,-1605
    or s0, t0, t1
    or s0, t0, t1

    li t0, 3
    li t1,  412
    or s0, t0, t1
    or s0, t0, t1

    li t0, 4
    li t1, 1363
    or s0, t0, t1
    or s0, t0, t1

    li t0, 5
    li t1, -115
    or s0, t0, t1
    or s0, t0, t1

    li t0, 6
    li t1, -209
    or s0, t0, t1
    or s0, t0, t1

    li t0, 7
    li t1,  277
    or s0, t0, t1
    or s0, t0, t1

    li t0, 8
    li t1,  381
    or s0, t0, t1
    or s0, t0, t1

    li t0, 9
    li t1,  736
    or s0, t0, t1
    or s0, t0, t1

    li t0, 10
    li t1,-1086
    or s0, t0, t1
    or s0, t0, t1

    li t0, 11
    li t1, 42
    or s0, t0, t1
    or s0, t0, t1

    li t0, 12
    li t1, 1346
    or s0, t0, t1
    or s0, t0, t1

    li t0, 13
    li t1, 1889
    or s0, t0, t1
    or s0, t0, t1

    li t0, 14
    li t1, -978
    or s0, t0, t1
    or s0, t0, t1

    li t0, 15
    li t1,   96
    or s0, t0, t1
    or s0, t0, t1

    li t0, 16
    li t1, -227
    or s0, t0, t1
    or s0, t0, t1

    li t0, 17
    li t1,-1409
    or s0, t0, t1
    or s0, t0, t1

    li t0, 18
    li t1, 1979
    or s0, t0, t1
    or s0, t0, t1

    li t0, 19
    li t1, -477
    or s0, t0, t1
    or s0, t0, t1

    li t0, 20
    li t1,  299
    or s0, t0, t1
    or s0, t0, t1

    li t0, 21
    li t1, -751
    or s0, t0, t1
    or s0, t0, t1

    li t0, 22
    li t1, 1563
    or s0, t0, t1
    or s0, t0, t1

    li t0, 23
    li t1, -968
    or s0, t0, t1
    or s0, t0, t1

    li t0, 24
    li t1,-1552
    or s0, t0, t1
    or s0, t0, t1

    li t0, 25
    li t1, -723
    or s0, t0, t1
    or s0, t0, t1

    li t0, 26
    li t1, -484
    or s0, t0, t1
    or s0, t0, t1

    li t0, 27
    li t1,-1781
    or s0, t0, t1
    or s0, t0, t1

    li t0, 28
    li t1, 2043
    or s0, t0, t1
    or s0, t0, t1

    li t0, 29
    li t1, -527
    or s0, t0, t1
    or s0, t0, t1

    li t0, 30
    li t1, -701
    or s0, t0, t1
    or s0, t0, t1

    li t0, 31
    li t1, 1502
    or s0, t0, t1
    or s0, t0, t1


    and s0, t0, t1 
    and s0, t0, t1 
    and s0, t0, t1 
    and s0, t0, t1 
    and s0, t0, t1 
    and s0, t0, t1 
    and s0, t0, t1 

    ret


