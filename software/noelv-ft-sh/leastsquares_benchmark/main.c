#include "msg.h"
#include "printf.h"



void sys_init() {
    set_gpio(NOEL_READY);
    uart_init(0xfc001000);
    printf("Hello, NOEL-V!\n");
}   


void sys_fini() {
    printf("Bye, NOEL-V!\n");
    while (1)
        __asm__ __volatile__("ADDI x0, x0, 0");		//NOP
}

void arr_fill(unsigned * x, unsigned * y, unsigned len){
    for (int i = 0; i < len; i++) {
        __asm__ volatile ("rdcycle %0;" : "=r"(*(x+i)));
        // *(x+i) = *(x+i) / 1000;
        *(y+i) = i + 1;
    }
}

unsigned sum(unsigned * arr, unsigned len){
    unsigned res = 0;
    for (int i = 0; i < len; i++) {
        res += *(arr+i);
    }
    return res;
}

unsigned sum_mul(unsigned * x, unsigned * y, unsigned len){
    unsigned res = 0;
    for (int i = 0; i < len; i++) {
        res += *(x+i) * *(y+i);
    }
    return res;
}

unsigned sqr_sum(unsigned * arr, unsigned len){
    unsigned res = 0;
    for (int i = 0; i < len; i++) {
        res += *(arr+i) * *(arr+i);
    }
    return res;
}

void main() {
    sys_init();

    unsigned x [10] = {11127, 12346, 13283, 14197, 15096, 15991, 16879, 17771, 18663, 19555};
    // unsigned x [10] = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19};
    unsigned y [10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    unsigned N = sizeof(x)/sizeof(unsigned);
    arr_fill(&x, &y, N);
    // printf("N %d\n", N);
    // printf("sum_mul %u\n", sum_mul(&x, &y, N));
    // printf("sum(x) %u\n", sum(&x, N));
    // printf("sum(y) %u\n", sum(&y, N));
    // printf("sqr_sum(&x) %u\n", sqr_sum(&x, N));
    // printf("sum^2 %u\n", (sum(&x, N))*sum(&x, N));
    unsigned a1 = (N * sum_mul(&x, &y, N) - (sum(&x, N) * sum(&y, N)));
    unsigned a2 = (N * sqr_sum(&x, N) - (sum(&x, N))^2);
    // printf("a1 %u\n", a1);
    // printf("a2 %u\n", a2);

    unsigned a = a1 / a2;
    unsigned b = (sum(&y, N) - a*sum(&x, N)) / N;

    // printf("a %d\n", (unsigned)a);
    // printf("b %d\n", (unsigned)b);

    unsigned res = (11 - b) / a;

    if (b == 5) {
        set_gpio(CM_SUCCESS);
        printf("OK");
    }
    else {
        printf("failed");
    }

    sys_fini();
}






