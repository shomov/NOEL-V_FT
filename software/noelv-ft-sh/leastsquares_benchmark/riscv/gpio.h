
#ifndef GPIO_H
#define GPIO_H

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

   struct gpio_regs {
      volatile uint32_t d_in;
      volatile uint32_t d_out;
      volatile uint32_t direction;
   };

   void set_gpio (uint32_t data);
   void reset_gpio ();

#endif /* GPIO_H */
