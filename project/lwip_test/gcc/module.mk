PROJECT_SRC = ${PROJECT_DIR}

###################################################################
#源文件
C_SOURCES += $(PROJECT_SRC)/src/main.c
C_SOURCES += $(PROJECT_SRC)/src/stm32f1xx_hal_msp.c
C_SOURCES += $(PROJECT_SRC)/src/stm32f1xx_it.c
C_SOURCES += $(PROJECT_SRC)/src/system_stm32f1xx.c
C_SOURCES += $(PROJECT_SRC)/src/ethernetif_user.c
C_SOURCES += $(PROJECT_SRC)/src/enc28j60_spi.c
C_SOURCES += $(PROJECT_SRC)/src/lwipdemo.c

###################################################################
#头文件路径
C_INCLUDES  += -I$(PROJECT_SRC)/inc

