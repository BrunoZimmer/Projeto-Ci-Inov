#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define I_BITS 8    // number of integer bits
#define Q_BITS 8    // number of fraction bits

void convert_to_binary(float num, FILE *output) {
    int int_part_d;
    float fraction_part_d;
    int int_part_arr[I_BITS] = {0};
    int fraction_part_arr[Q_BITS] = {0};
    int j, k, temp, dot = 0;
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

    // Output the integer part
    for (j = I_BITS - 1; j >= 0; j--) {
        fprintf(output, "%d", int_part_arr[j]);
    }

    // Output the fractional part
    for (j = 0; j < Q_BITS; j++) {
        fprintf(output, "%d", fraction_part_arr[j]);
    }
    
    fprintf(output, "\n");
}

int main(int argc, char *argv[]) {
    FILE *input_file, *output;
    char line[256];
    float num;

    // Open input and output files
    if (argc != 3) {
        printf("Usage: %s <input_file> <output_file>\n", argv[0]);
        return 1;
    }

    input_file = fopen(argv[1], "r");
    if (input_file == NULL) {
        printf("Input file not found\n");
        return 1;
    }

    output = fopen(argv[2], "w");
    if (output == NULL) {
        printf("Error opening output file\n");
        fclose(input_file);
        return 1;
    }

    // Read the input file line by line
    while (fgets(line, sizeof(line), input_file)) {
        // Convert the string to a float and process
        sscanf(line, "%f", &num);
        convert_to_binary(num, output);
    }

    fclose(input_file);
    fclose(output);
    
    return 0;
}
