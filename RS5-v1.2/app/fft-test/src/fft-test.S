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
    li t1, 1080
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 3
    li t1, 932
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 5
    li t1, 1991
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 7
    li t1, 755
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 9
    li t1, -1953
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 11
    li t1, 137
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 13
    li t1, -1979
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 15
    li t1, 401
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 17
    li t1, 655
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 19
    li t1, 713
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 21
    li t1, 732
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 23
    li t1, 95
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 25
    li t1, 1489
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 27
    li t1, 1233
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 29
    li t1, 561
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 31
    li t1, -950
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 33
    li t1, -987
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 35
    li t1, 1705
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 37
    li t1, -1129
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 39
    li t1, -1034
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 41
    li t1, -984
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 43
    li t1, 1646
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 45
    li t1, -1368
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 47
    li t1, 1262
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 49
    li t1, 924
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 51
    li t1, 1515
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 53
    li t1, 440
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 55
    li t1, 177
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 57
    li t1, -306
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 59
    li t1, 544
    or s0, t0, t1
    or s0, t0, t1
    
    li t0, 61
    li t1, -722
    or s0, t0, t1
    or s0, t0, t1

    li t0, 63
    li t1, -1629
    or s0, t0, t1
    or s0, t0, t1






    li t0, 0
    li t1,-512
    or s0, t0, t1
    or s0, t0, t1

    li t0, 2
    li t1,-1658
    or s0, t0, t1
    or s0, t0, t1

    li t0, 4
    li t1,  1998
    or s0, t0, t1
    or s0, t0, t1

    li t0, 6
    li t1, -826
    or s0, t0, t1
    or s0, t0, t1

    li t0, 8
    li t1, 1987
    or s0, t0, t1
    or s0, t0, t1

    li t0, 10
    li t1, 1351
    or s0, t0, t1
    or s0, t0, t1

    li t0, 12
    li t1, 898
    or s0, t0, t1
    or s0, t0, t1

    li t0, 14
    li t1, 93
    or s0, t0, t1
    or s0, t0, t1

    li t0, 16
    li t1, 878
    or s0, t0, t1
    or s0, t0, t1

    li t0, 18
    li t1, -708
    or s0, t0, t1
    or s0, t0, t1

    li t0, 20
    li t1, 1507
    or s0, t0, t1
    or s0, t0, t1

    li t0, 22
    li t1, 556
    or s0, t0, t1
    or s0, t0, t1

    li t0, 24
    li t1, 17
    or s0, t0, t1
    or s0, t0, t1

    li t0, 26
    li t1, -256
    or s0, t0, t1
    or s0, t0, t1

    li t0, 28
    li t1, 511
    or s0, t0, t1
    or s0, t0, t1

    li t0, 30
    li t1, -922
    or s0, t0, t1
    or s0, t0, t1

    li t0, 32
    li t1, 917
    or s0, t0, t1
    or s0, t0, t1

    li t0, 34
    li t1, -1257
    or s0, t0, t1
    or s0, t0, t1

    li t0, 36
    li t1, -317
    or s0, t0, t1
    or s0, t0, t1

    li t0, 38
    li t1, 924
    or s0, t0, t1
    or s0, t0, t1

    li t0, 40
    li t1, 1536
    or s0, t0, t1
    or s0, t0, t1

    li t0, 42
    li t1, 679
    or s0, t0, t1
    or s0, t0, t1

    li t0, 44
    li t1, 261
    or s0, t0, t1
    or s0, t0, t1

    li t0, 46
    li t1, 1444
    or s0, t0, t1
    or s0, t0, t1

    li t0, 48
    li t1, -743
    or s0, t0, t1
    or s0, t0, t1

    li t0, 50
    li t1, 1176
    or s0, t0, t1
    or s0, t0, t1

    li t0, 52
    li t1, 1995
    or s0, t0, t1
    or s0, t0, t1

    li t0, 54
    li t1, 485
    or s0, t0, t1
    or s0, t0, t1

    li t0, 56
    li t1, 1639
    or s0, t0, t1
    or s0, t0, t1

    li t0, 58
    li t1, 523
    or s0, t0, t1
    or s0, t0, t1

    li t0, 60
    li t1, -1017
    or s0, t0, t1
    or s0, t0, t1

    li t0, 62
    li t1, -1791
    or s0, t0, t1
    or s0, t0, t1









    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    li t1, 0

    srli s0, t1, 0
    srli s0, t1, 1
    srli s0, t1, 2
    srli s0, t1, 3
    srli s0, t1, 4
    srli s0, t1, 5
    srli s0, t1, 6
    srli s0, t1, 7
    srli s0, t1, 8
    srli s0, t1, 9
    srli s0, t1, 10
    srli s0, t1, 11
    srli s0, t1, 12
    srli s0, t1, 13
    srli s0, t1, 14
    srli s0, t1, 15
    srli s0, t1, 16
    srli s0, t1, 17
    srli s0, t1, 18
    srli s0, t1, 19
    srli s0, t1, 20
    srli s0, t1, 21
    srli s0, t1, 22
    srli s0, t1, 23
    srli s0, t1, 24
    srli s0, t1, 25
    srli s0, t1, 26
    srli s0, t1, 27
    srli s0, t1, 28
    srli s0, t1, 29
    srli s0, t1, 30
    srli s0, t1, 31



    #and s0, t1, 0
    #and s0, t1, 2
    #and s0, t1, 4
    #and s0, t1, 6
    #and s0, t1, 8
    #and s0, t1, 10
    #and s0, t1, 12
    #and s0, t1, 14
    #and s0, t1, 16
    #and s0, t1, 18
    #and s0, t1, 20
    #and s0, t1, 22
    #and s0, t1, 24
    #and s0, t1, 26
    #and s0, t1, 28
    #and s0, t1, 30
    #and s0, t1, 32
    #and s0, t1, 34
    #and s0, t1, 36
    #and s0, t1, 38
    #and s0, t1, 40
    #and s0, t1, 42
    #and s0, t1, 44
    #and s0, t1, 46
    #and s0, t1, 48
    #and s0, t1, 50
    #and s0, t1, 52
    #and s0, t1, 54
    #and s0, t1, 56
    #and s0, t1, 58
    #and s0, t1, 60
    #and s0, t1, 62
    #and s0, t1, 64
    

    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 


    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 



    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 
    add s0, t0, t1 

    ret


