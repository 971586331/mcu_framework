
SET(C_SOURCES 
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_spi.c
    ./Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_uart.c
    ./Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/startup_stm32f103xe.s
)

add_library(stm32f1xx_hal ${C_SOURCES})
