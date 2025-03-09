    .section .data
valores_real:   .word 0, -1700, -1605, 412, 1363, -115, -209, 277, 381, 736,-1086, 42, 1346, 1889, -978, 96, -227, -1409, 1979, -477,299, -751, 1563, -968, -1552, -723, -484, -1781, 2043, -527, -701, 1502

valores_imag:   .word -1884, 1674, 262, 1052, -6, 1818, -36, -1932, -203, -1591,-1760, 47, -1397, -145, -24, -743, 116, 1596, -98, -1501,681, 1002, -1492, -1465, 121, 86, 393, -49, -1910, 621, 672, 2032

    .section .text
    .globl _start

_start:
    # Carregar valores reais nos registradores
    la t0, valores_real      # Carrega o endereço de valores_real em t0
    lw t1, 0(t0)             # t1 = valores_real[0]
    lw t2, 4(t0)             # t2 = valores_real[1]
    lw t3, 8(t0)             # t3 = valores_real[2]
    lw t4, 12(t0)            # t4 = valores_real[3]
    lw t5, 16(t0)            # t5 = valores_real[4]
    lw t6, 20(t0)            # t6 = valores_real[5]
    lw t7, 24(t0)            # t7 = valores_real[6]
    lw t8, 28(t0)            # t8 = valores_real[7]
    lw t9, 32(t0)            # t9 = valores_real[8]
    lw s0, 36(t0)            # s0 = valores_real[9]
    lw s1, 40(t0)            # s1 = valores_real[10]
    lw s2, 44(t0)            # s2 = valores_real[11]
    lw s3, 48(t0)            # s3 = valores_real[12]
    lw s4, 52(t0)            # s4 = valores_real[13]
    lw s5, 56(t0)            # s5 = valores_real[14]
    lw s6, 60(t0)            # s6 = valores_real[15]
    lw s7, 64(t0)            # s7 = valores_real[16]
    lw s8, 68(t0)            # s8 = valores_real[17]
    lw s9, 72(t0)            # s9 = valores_real[18]
    lw t10, 76(t0)           # t10 = valores_real[19]
    lw t11, 80(t0)           # t11 = valores_real[20]
    lw t12, 84(t0)           # t12 = valores_real[21]
    lw t13, 88(t0)           # t13 = valores_real[22]
    lw t14, 92(t0)           # t14 = valores_real[23]
    lw t15, 96(t0)           # t15 = valores_real[24]
    lw t16, 100(t0)          # t16 = valores_real[25]
    lw t17, 104(t0)          # t17 = valores_real[26]
    lw t18, 108(t0)          # t18 = valores_real[27]
    lw t19, 112(t0)          # t19 = valores_real[28]
    lw t20, 116(t0)          # t20 = valores_real[29]
    lw t21, 120(t0)          # t21 = valores_real[30]
    lw t22, 124(t0)          # t22 = valores_real[31]

    # Carregar valores imaginários nos registradores
    la t23, valores_imag     # Carrega o endereço de valores_imag em t23
    lw t24, 0(t23)           # t24 = valores_imag[0]
    lw t25, 4(t23)           # t25 = valores_imag[1]
    lw t26, 8(t23)           # t26 = valores_imag[2]
    lw t27, 12(t23)          # t27 = valores_imag[3]
    lw t28, 16(t23)          # t28 = valores_imag[4]
    lw t29, 20(t23)          # t29 = valores_imag[5]
    lw t30, 24(t23)          # t30 = valores_imag[6]
    lw t31, 28(t23)          # t31 = valores_imag[7]
    lw s0, 32(t23)           # s0 = valores_imag[8]
    lw s1, 36(t23)           # s1 = valores_imag[9]
    lw s2, 40(t23)           # s2 = valores_imag[10]
    lw s3, 44(t23)           # s3 = valores_imag[11]
    lw s4, 48(t23)           # s4 = valores_imag[12]
    lw s5, 52(t23)           # s5 = valores_imag[13]
    lw s6, 56(t23)           # s6 = valores_imag[14]
    lw s7, 60(t23)           # s7 = valores_imag[15]
    lw s8, 64(t23)           # s8 = valores_imag[16]
    lw s9, 68(t23)           # s9 = valores_imag[17]
    lw t10, 72(t23)          # t10 = valores_imag[18]
    lw t11, 76(t23)          # t11 = valores_imag[19]
    lw t12, 80(t23)          # t12 = valores_imag[20]
    lw t13, 84(t23)          # t13 = valores_imag[21]
    lw t14, 88(t23)          # t14 = valores_imag[22]
    lw t15, 92(t23)          # t15 = valores_imag[23]
    lw t16, 96(t23)          # t16 = valores_imag[24]
    lw t17, 100(t23)         # t17 = valores_imag[25]
    lw t18, 104(t23)         # t18 = valores_imag[26]
    lw t19, 108(t23)         # t19 = valores_imag[27]
    lw t20, 112(t23)         # t20 = valores_imag[28]
    lw t21, 116(t23)         # t21 = valores_imag[29]
    lw t22, 120(t23)         # t22 = valores_imag[30]
    lw t23, 124(t23)         # t23 = valores_imag[31]

    # Realizar a soma dos valores reais e imaginários
    add t1, t1, t24           # t1 = valores_real[0] + valores_imag[0]
    add t2, t2, t25           # t2 = valores_real[1] + valores_imag[1]
    add t3, t3, t26           # t3 = valores_real[2] + valores_imag[2]
    add t4, t4, t27           # t4 = valores_real[3] + valores_imag[3]
    add t5, t5, t28           # t5 = valores_real[4] + valores_imag[4]
    add t6, t6, t29           # t6 = valores_real[5] + valores_imag[5]
    add          # t7 = valores_real[6] + valores_imag[6]
    add          # t8 = valores_real[7] + valores_imag[7]
    add t9, t9, s0            # t9 = valores_real[8] + valores_imag[8]
    add s0, s0, s1            # s0 = valores_real[9] + valores_imag[9]
    add s1, s1, s2            # s1 = valores_real[10] + valores_imag[10]
    add s2, s2, s3            # s2 = valores_real[11] + valores_imag[11]
    add s3, s3, s4            # s3 = valores_real[12] + valores_imag[12]
    add s4, s4, s5            # s4 = valores_real[13] + valores_imag[13]
    add s5, s5, s6            # s5 = valores_real[14] + valores_imag[14]
    add s6, s6, s7            # s6 = valores_real[15] + valores_imag[15]
    add s7, s7, s8            # s7 = valores_real[16] + valores_imag[16]
    add s8, s8, s9            # s8 = valores_real[17] + valores_imag[17]
    add s9, s9, t10           # s9 = valores_real[18] + valores_imag[18]
    add t10, t10, t11         # t10 = valores_real[19] + valores_imag[19]
    add t11, t11, t12         # t11 = valores_real[20] + valores_imag[20]
    add t12, t12, t13         # t12 = valores_real[21] + valores_imag[21]
    add t13, t13, t14         # t13 = valores_real[22] + valores_imag[22]
    add t14, t14, t15         # t14 = valores_real[23] + valores_imag[23]
    add t15, t15, t16         # t15 = valores_real[24] + valores_imag[24]
    add t16, t16, t17         # t16 = valores_real[25] + valores_imag[25]
    add t17, t17, t18         # t17 = valores_real[26] + valores_imag[26]
    add t18, t18, t19         # t18 = valores_real[27] + valores_imag[27]
    add t19, t19, t20         # t19 = valores_real[28] + valores_imag[28]
    add t20, t20, t21         # t20 = valores_real[29] + valores_imag[29]
    add t21, t21, t22         # t21 = valores_real[30] + valores_imag[30]
    add t22, t22, t23         # t22 = valores_real[31] + valores_imag[31]

    # Fim do programa (inicia a saída para o sistema operacional)
    li a7, 10                # Sistema de chamada para sair
    ecall

    .section .data
resultados: .space 128      # Reservando 128 bytes para os resultados

