/*****************************************************************************
 *                   SEGGER Microcontroller GmbH & Co. KG                    *
 *            Solutions for real time microcontroller applications           *
 *****************************************************************************
 *                                                                           *
 *               (c) 2016 SEGGER Microcontroller GmbH & Co. KG               *
 *                                                                           *
 *           Internet: www.segger.com   Support: support@segger.com          *
 *                                                                           *
 *****************************************************************************/

/*****************************************************************************
 *                         Preprocessor Definitions                          *
 *                         ------------------------                          *
 * VECTORS_IN_RAM                                                            *
 *                                                                           *
 *   If defined, an area of RAM will large enough to store the vector table  *
 *   will be reserved.                                                       *
 *                                                                           *
 *****************************************************************************/

  .syntax unified
  .code 16

  .section .init, "ax"
  .align 0

/*****************************************************************************
 * Default Exception Handlers                                                *
 *****************************************************************************/

  .thumb_func
  .weak NMI_Handler
NMI_Handler:
  b .

  .thumb_func
  .weak HardFault_Handler
HardFault_Handler:
  b .

  .thumb_func
  .weak SVC_Handler
SVC_Handler:
  b .

  .thumb_func
  .weak PendSV_Handler
PendSV_Handler:
  b .

  .thumb_func
  .weak SysTick_Handler
SysTick_Handler:
  b .

  .thumb_func
Dummy_Handler:
  b .

#if defined(__OPTIMIZATION_SMALL)

  .weak PSS_IRQHandler
  .thumb_set PSS_IRQHandler,Dummy_Handler

  .weak CS_IRQHandler
  .thumb_set CS_IRQHandler,Dummy_Handler

  .weak PCM_IRQHandler
  .thumb_set PCM_IRQHandler,Dummy_Handler

  .weak WDT_A_IRQHandler
  .thumb_set WDT_A_IRQHandler,Dummy_Handler

  .weak FLCTL_IRQHandler
  .thumb_set FLCTL_IRQHandler,Dummy_Handler

  .weak COMP_E0_IRQHandler
  .thumb_set COMP_E0_IRQHandler,Dummy_Handler

  .weak COMP_E1_IRQHandler
  .thumb_set COMP_E1_IRQHandler,Dummy_Handler

  .weak TA0_0_IRQHandler
  .thumb_set TA0_0_IRQHandler,Dummy_Handler

  .weak TA0_N_IRQHandler
  .thumb_set TA0_N_IRQHandler,Dummy_Handler

  .weak TA1_0_IRQHandler
  .thumb_set TA1_0_IRQHandler,Dummy_Handler

  .weak TA1_N_IRQHandler
  .thumb_set TA1_N_IRQHandler,Dummy_Handler

  .weak TA2_0_IRQHandler
  .thumb_set TA2_0_IRQHandler,Dummy_Handler

  .weak TA2_N_IRQHandler
  .thumb_set TA2_N_IRQHandler,Dummy_Handler

  .weak TA3_0_IRQHandler
  .thumb_set TA3_0_IRQHandler,Dummy_Handler

  .weak TA3_N_IRQHandler
  .thumb_set TA3_N_IRQHandler,Dummy_Handler

  .weak EUSCIA0_IRQHandler
  .thumb_set EUSCIA0_IRQHandler,Dummy_Handler

  .weak EUSCIA1_IRQHandler
  .thumb_set EUSCIA1_IRQHandler,Dummy_Handler

  .weak EUSCIA2_IRQHandler
  .thumb_set EUSCIA2_IRQHandler,Dummy_Handler

  .weak EUSCIA3_IRQHandler
  .thumb_set EUSCIA3_IRQHandler,Dummy_Handler

  .weak EUSCIB0_IRQHandler
  .thumb_set EUSCIB0_IRQHandler,Dummy_Handler

  .weak EUSCIB1_IRQHandler
  .thumb_set EUSCIB1_IRQHandler,Dummy_Handler

  .weak EUSCIB2_IRQHandler
  .thumb_set EUSCIB2_IRQHandler,Dummy_Handler

  .weak EUSCIB3_IRQHandler
  .thumb_set EUSCIB3_IRQHandler,Dummy_Handler

  .weak ADC14_IRQHandler
  .thumb_set ADC14_IRQHandler,Dummy_Handler

  .weak T32_INT1_IRQHandler
  .thumb_set T32_INT1_IRQHandler,Dummy_Handler

  .weak T32_INT2_IRQHandler
  .thumb_set T32_INT2_IRQHandler,Dummy_Handler

  .weak T32_INTC_IRQHandler
  .thumb_set T32_INTC_IRQHandler,Dummy_Handler

  .weak AES256_IRQHandler
  .thumb_set AES256_IRQHandler,Dummy_Handler

  .weak RTC_C_IRQHandler
  .thumb_set RTC_C_IRQHandler,Dummy_Handler

  .weak DMA_ERR_IRQHandler
  .thumb_set DMA_ERR_IRQHandler,Dummy_Handler

  .weak DMA_INT3_IRQHandler
  .thumb_set DMA_INT3_IRQHandler,Dummy_Handler

  .weak DMA_INT2_IRQHandler
  .thumb_set DMA_INT2_IRQHandler,Dummy_Handler

  .weak DMA_INT1_IRQHandler
  .thumb_set DMA_INT1_IRQHandler,Dummy_Handler

  .weak DMA_INT0_IRQHandler
  .thumb_set DMA_INT0_IRQHandler,Dummy_Handler

  .weak DIO_PORT1_IRQHandler
  .thumb_set DIO_PORT1_IRQHandler,Dummy_Handler

  .weak DIO_PORT2_IRQHandler
  .thumb_set DIO_PORT2_IRQHandler,Dummy_Handler

  .weak DIO_PORT3_IRQHandler
  .thumb_set DIO_PORT3_IRQHandler,Dummy_Handler

  .weak DIO_PORT4_IRQHandler
  .thumb_set DIO_PORT4_IRQHandler,Dummy_Handler

  .weak DIO_PORT5_IRQHandler
  .thumb_set DIO_PORT5_IRQHandler,Dummy_Handler

  .weak DIO_PORT6_IRQHandler
  .thumb_set DIO_PORT6_IRQHandler,Dummy_Handler

#else

  .thumb_func
  .weak PSS_IRQHandler
PSS_IRQHandler:
  b .

  .thumb_func
  .weak CS_IRQHandler
CS_IRQHandler:
  b .

  .thumb_func
  .weak PCM_IRQHandler
PCM_IRQHandler:
  b .

  .thumb_func
  .weak WDT_A_IRQHandler
WDT_A_IRQHandler:
  b .

  .thumb_func
  .weak FLCTL_IRQHandler
FLCTL_IRQHandler:
  b .

  .thumb_func
  .weak COMP_E0_IRQHandler
COMP_E0_IRQHandler:
  b .

  .thumb_func
  .weak COMP_E1_IRQHandler
COMP_E1_IRQHandler:
  b .

  .thumb_func
  .weak TA0_0_IRQHandler
TA0_0_IRQHandler:
  b .

  .thumb_func
  .weak TA0_N_IRQHandler
TA0_N_IRQHandler:
  b .

  .thumb_func
  .weak TA1_0_IRQHandler
TA1_0_IRQHandler:
  b .

  .thumb_func
  .weak TA1_N_IRQHandler
TA1_N_IRQHandler:
  b .

  .thumb_func
  .weak TA2_0_IRQHandler
TA2_0_IRQHandler:
  b .

  .thumb_func
  .weak TA2_N_IRQHandler
TA2_N_IRQHandler:
  b .

  .thumb_func
  .weak TA3_0_IRQHandler
TA3_0_IRQHandler:
  b .

  .thumb_func
  .weak TA3_N_IRQHandler
TA3_N_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIA0_IRQHandler
EUSCIA0_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIA1_IRQHandler
EUSCIA1_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIA2_IRQHandler
EUSCIA2_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIA3_IRQHandler
EUSCIA3_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIB0_IRQHandler
EUSCIB0_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIB1_IRQHandler
EUSCIB1_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIB2_IRQHandler
EUSCIB2_IRQHandler:
  b .

  .thumb_func
  .weak EUSCIB3_IRQHandler
EUSCIB3_IRQHandler:
  b .

  .thumb_func
  .weak ADC14_IRQHandler
ADC14_IRQHandler:
  b .

  .thumb_func
  .weak T32_INT1_IRQHandler
T32_INT1_IRQHandler:
  b .

  .thumb_func
  .weak T32_INT2_IRQHandler
T32_INT2_IRQHandler:
  b .

  .thumb_func
  .weak T32_INTC_IRQHandler
T32_INTC_IRQHandler:
  b .

  .thumb_func
  .weak AES256_IRQHandler
AES256_IRQHandler:
  b .

  .thumb_func
  .weak RTC_C_IRQHandler
RTC_C_IRQHandler:
  b .

  .thumb_func
  .weak DMA_ERR_IRQHandler
DMA_ERR_IRQHandler:
  b .

  .thumb_func
  .weak DMA_INT3_IRQHandler
DMA_INT3_IRQHandler:
  b .

  .thumb_func
  .weak DMA_INT2_IRQHandler
DMA_INT2_IRQHandler:
  b .

  .thumb_func
  .weak DMA_INT1_IRQHandler
DMA_INT1_IRQHandler:
  b .

  .thumb_func
  .weak DMA_INT0_IRQHandler
DMA_INT0_IRQHandler:
  b .

  .thumb_func
  .weak DIO_PORT1_IRQHandler
DIO_PORT1_IRQHandler:
  b .

  .thumb_func
  .weak DIO_PORT2_IRQHandler
DIO_PORT2_IRQHandler:
  b .

  .thumb_func
  .weak DIO_PORT3_IRQHandler
DIO_PORT3_IRQHandler:
  b .

  .thumb_func
  .weak DIO_PORT4_IRQHandler
DIO_PORT4_IRQHandler:
  b .

  .thumb_func
  .weak DIO_PORT5_IRQHandler
DIO_PORT5_IRQHandler:
  b .

  .thumb_func
  .weak DIO_PORT6_IRQHandler
DIO_PORT6_IRQHandler:
  b .

#endif

/*****************************************************************************
 * Vector Table                                                              *
 *****************************************************************************/

  .section .vectors, "ax"
  .align 0
  .global _vectors
  .extern __stack_end__
  .extern Reset_Handler

_vectors:
  .word __stack_end__
  .word Reset_Handler
  .word NMI_Handler
  .word HardFault_Handler
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word SVC_Handler
  .word 0 /* Reserved */
  .word 0 /* Reserved */
  .word PendSV_Handler
  .word SysTick_Handler
  .word PSS_IRQHandler
  .word CS_IRQHandler
  .word PCM_IRQHandler
  .word WDT_A_IRQHandler
  .word Dummy_Handler /* Reserved */
  .word FLCTL_IRQHandler
  .word COMP_E0_IRQHandler
  .word COMP_E1_IRQHandler
  .word TA0_0_IRQHandler
  .word TA0_N_IRQHandler
  .word TA1_0_IRQHandler
  .word TA1_N_IRQHandler
  .word TA2_0_IRQHandler
  .word TA2_N_IRQHandler
  .word TA3_0_IRQHandler
  .word TA3_N_IRQHandler
  .word EUSCIA0_IRQHandler
  .word EUSCIA1_IRQHandler
  .word EUSCIA2_IRQHandler
  .word EUSCIA3_IRQHandler
  .word EUSCIB0_IRQHandler
  .word EUSCIB1_IRQHandler
  .word EUSCIB2_IRQHandler
  .word EUSCIB3_IRQHandler
  .word ADC14_IRQHandler
  .word T32_INT1_IRQHandler
  .word T32_INT2_IRQHandler
  .word T32_INTC_IRQHandler
  .word AES256_IRQHandler
  .word RTC_C_IRQHandler
  .word DMA_ERR_IRQHandler
  .word DMA_INT3_IRQHandler
  .word DMA_INT2_IRQHandler
  .word DMA_INT1_IRQHandler
  .word DMA_INT0_IRQHandler
  .word DIO_PORT1_IRQHandler
  .word DIO_PORT2_IRQHandler
  .word DIO_PORT3_IRQHandler
  .word DIO_PORT4_IRQHandler
  .word DIO_PORT5_IRQHandler
  .word DIO_PORT6_IRQHandler
_vectors_end:

#ifdef VECTORS_IN_RAM
  .section .vectors_ram, "ax"
  .align 0
  .global _vectors_ram

_vectors_ram:
  .space _vectors_end - _vectors, 0
#endif
