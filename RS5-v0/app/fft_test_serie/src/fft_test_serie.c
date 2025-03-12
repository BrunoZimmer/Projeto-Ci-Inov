#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>

#define N 32 // Size of the FFT

// Function to perform FFT
void fft(complex double *x, int n, int step) {
    if (step < n) {
        fft(x, n, step * 2);
        fft(x + step, n, step * 2);

        for (int i = 0; i < n / 2; i++) {
            complex double t = cexp(-I * M_PI * i / (n / 2)) * x[i + step];
            x[i + step] = x[i] - t;
            x[i] = x[i] + t;
        }
    }
}

// Helper function to print complex numbers
void print_complex_array(complex double *arr, int n) {
    for (int i = 0; i < n; i++) {
        printf("x[%d] = %.2f + %.2fi\n", i, creal(arr[i]), cimag(arr[i]));
    }
}

int main() {

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
    complex double x[N];

    // Initialize input data (for testing)
    for (int i = 0; i < N; i++) {
        x[i] = cos(2 * M_PI * i / N) + sin(2 * M_PI * i / N) * I; // Example signal
    }

    // Perform FFT
    fft(x, N, 1);

    // Print the FFT results
    print_complex_array(x, N);


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

