STM32F1XX_SRC = ${TOP}/vendor/STM32F1xx

###################################################################
#源文件
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c
C_SOURCES += $(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.c

ASM_SOURCES += $(STM32F1XX_SRC)/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/startup_stm32f103xe.s

###################################################################
#头文件路径
C_INCLUDES += -I$(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Inc
C_INCLUDES += -I$(STM32F1XX_SRC)/Drivers/CMSIS/Device/ST/STM32F1xx/Include
C_INCLUDES += -I$(STM32F1XX_SRC)/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy
C_INCLUDES += -I$(STM32F1XX_SRC)/Drivers/CMSIS/Device/ST/STM32F1xx/Include
C_INCLUDES += -I$(STM32F1XX_SRC)/Drivers/CMSIS/Include
C_INCLUDES += -I$(STM32F1XX_SRC)/Drivers/CMSIS/Include
