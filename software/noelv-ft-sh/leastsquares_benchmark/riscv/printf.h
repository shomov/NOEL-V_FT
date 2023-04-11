
#ifndef PRINTF_H
#define PRINTF_H

   // #include <stddef.h>

   #define DISABLE 0x0
   #define ENABLE_RX 0x1
   #define ENABLE_TX 0x2
   #define RX_INT 0x4
   #define TX_INT 0x8
   #define EVEN_PARITY 0x20
   #define ODD_PARITY 0x30
   #define LOOP_BACK 0x80
   #define FLOW_CONTROL 0x40
   #define FIFO_TX_INT 0x200
   #define FIFO_RX_INT 0x400

   typedef unsigned int   uint32_t;

   struct uart_regs {
      volatile uint32_t data;
      volatile uint32_t status;
      volatile uint32_t control;
      volatile uint32_t scaler;
   };
   void uart_init(unsigned int addr);

   int printf(const char *format, ...);
   int sprintf(char *out, const char *format, ...);
   int print_test(void);

#endif /* PRINTF_H */
