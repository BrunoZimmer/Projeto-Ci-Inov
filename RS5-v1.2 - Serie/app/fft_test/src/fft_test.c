#include <stdio.h>
#include <stdlib.h>

#define NUM_OPERACOES 32

int main() {
    // Open input files
    printf("Código em C rodando \n\n");
    // Now do 32 uninterrupted operations

    __asm__ __volatile__ (
        "li t0, 1\n\t"       
        "li t1, 1999\n\t"    
        "sub s0, t0, t1\n\t" 
        "sub s0, t0, t1\n\t" 
        :
        :
        : "s0", "t0", "t1"  
    );

    __asm__ __volatile__ (
        "li t0, 3\n\t"       
        "li t1, 2025\n\t"    
        "sub s0, t0, t1\n\t" 
        "sub s0, t0, t1\n\t" 
        :
        :
        : "s0", "t0", "t1"  
    );


    __asm__ __volatile__ (
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        "add t0, t0, s0\n\t"
        "add t1, t1, s1\n\t"
        "add t2, t2, s2\n\t"
        "add t3, t3, s3\n\t"
        "add t4, t4, s4\n\t"
        :
        :
        : "t0", "t1", "t2", "t3", "t4", "s0", "s1", "s2", "s3", "s4" // Clobbered registers
    );

    return 0;
}

