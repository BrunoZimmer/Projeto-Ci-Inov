#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define I_BITS 8    // number of integer bits
#define Q_BITS 8    // number of fraction bits

#include <stdio.h>

#define I_BITS 8    // Number of integer bits
#define Q_BITS 8    // Number of fractional bits

void convert_to_binary(float num) {
    int int_part_d;
    float fraction_part_d;
    int int_part_arr[I_BITS] = {0};
    int fraction_part_arr[Q_BITS] = {0};
    int j, k, temp;
    int flag_sign = 0;
    int flag_first = 1;

    // Check if the number is negative
    if (num < 0) {
        flag_sign = 1;
        num = -num;
    }

    // Split the number into integer and fractional parts
    int_part_d = (int)num;
    fraction_part_d = num - int_part_d;

    // Convert the integer part into binary
    for (j = 0; j < I_BITS; j++) {
        int_part_arr[j] = int_part_d % 2;
        int_part_d = int_part_d / 2;
    }

    // Convert the fractional part into binary
    for (j = 0; j < Q_BITS; j++) {
        fraction_part_d *= 2;
        temp = (int)fraction_part_d;
        fraction_part_arr[j] = temp;
        fraction_part_d -= temp;
    }

    // If the number is negative, get its 2's complement
    if (flag_sign == 1) {
        // Convert fractional part to 2's complement
        for (j = Q_BITS - 1; j >= 0; j--) {
            if (fraction_part_arr[j] == 1 && flag_first) {
                flag_first = 0;
                continue;
            }
            if (flag_first == 0) {
                fraction_part_arr[j] = 1 - fraction_part_arr[j];
            }
        }

        // Convert integer part to 2's complement
        flag_first = 1;
        for (k = I_BITS - 1; k >= 0; k--) {
            if (int_part_arr[k] == 1 && flag_first) {
                flag_first = 0;
                continue;
            }
            if (flag_first == 0) {
                int_part_arr[k] = 1 - int_part_arr[k];
            }
        }
    }

    // Output the integer part (print it directly)
    for (j = I_BITS - 1; j >= 0; j--) {
        printf("%d", int_part_arr[j]);
    }

    // Output the fractional part (print it directly)
    for (j = 0; j < Q_BITS; j++) {
        printf("%d", fraction_part_arr[j]);
    }

    // Print a newline after each number's binary representation
    printf("\n");
}

int main() {
    printf("PRINT 0 CHEGUEI\n");
    __asm__ __volatile__ (
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        :
        :
        : "t0", "t1", "t2", "t3", "t4", "s0", "s1", "s2", "s3", "s4" // Clobbered registers
    );
    
    float num[] = {-1884,1674,262,1052,-6,1818,-36,-1932,-203,-1591,-1760,47,-1397,-145,-24,-743,116,1596,-98,-1501,681,1002,-1492,-1465,121,86,393,-49,-1910,621,672,2032};
    int i;

    printf("PRINT 1 CHEGUEI\n");
    
    // output = fopen("./output.txt", "w");
    
    // if (output == NULL) {
    //     printf("Error opening output file\n");
    //     return 1;
    // }
    
    for(i=0; i<32; i++) {
        // Convert the string to a float and process
        convert_to_binary(num[i]);
    }

    // fclose(input_file);
    // fclose(output);
    
    __asm__ __volatile__ (
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        "xor t0, t0, s0\n\t"
        "xor t1, t1, s1\n\t"
        "xor t2, t2, s2\n\t"
        "xor t3, t3, s3\n\t"
        "xor t4, t4, s4\n\t"
        :
        :
        : "t0", "t1", "t2", "t3", "t4", "s0", "s1", "s2", "s3", "s4" // Clobbered registers
    );

    // __asm__ __volatile__ (
    //     "xor t0, t0, s0\n\t"
    //     "xor t1, t1, s1\n\t"
    //     "xor t2, t2, s2\n\t"
    //     "xor t3, t3, s3\n\t"
    //     "xor t4, t4, s4\n\t"
    //     :
    //     :
    //     : "t0", "t1", "t2", "t3", "t4", "s0", "s1", "s2", "s3", "s4" // Clobbered registers
    // );
    return 0;
}
