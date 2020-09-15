
#
set(CMAKE_C_COMPILER "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc")
set(CMAKE_CXX_COMPILER "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-g++")
set(CMAKE_OBJCOPY "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-objcopy")
set(CMAKE_SIZE "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-size")

add_definitions(
-DUSE_HAL_DRIVER
-DSTM32F103xE
)

set(MCU_FLAGS "-mcpu=cortex-m3 -mthumb")
set(CMAKE_C_FLAGS "${MCU_FLAGS} -Wall -fdata-sections -ffunction-sections -specs=nosys.specs")
set(CMAKE_C_FLAGS_DEBUG "-g -gdwarf-2")
set(CMAKE_C_FLAGS_RELEASE "")

set(CMAKE_BUILD_TYPE "Debug")

set(LINKER_SCRIPT ./gcc/STM32F103RCTx_FLASH.ld)

include_directories(./inc)

include_directories(${CMAKE_SOURCE_DIR}/vendor/STM32F1xx/Drivers/STM32F1xx_HAL_Driver/Inc)
include_directories(${CMAKE_SOURCE_DIR}/vendor/STM32F1xx/Drivers/CMSIS/Device/ST/STM32F1xx/Include)
include_directories(${CMAKE_SOURCE_DIR}/vendor/STM32F1xx/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy)
include_directories(${CMAKE_SOURCE_DIR}/vendor/STM32F1xx/Drivers/CMSIS/Include)

include_directories(${CMAKE_SOURCE_DIR}/components/enc28j60)

include_directories(${CMAKE_SOURCE_DIR}/components/lwip-1.4.1/src/include)
include_directories(${CMAKE_SOURCE_DIR}/components/lwip-1.4.1/src/include/ipv4)
include_directories(${CMAKE_SOURCE_DIR}/components/lwip-1.4.1/src/include/ipv4/lwip)

SET(PROJECT_SOURCES
    ./src/main.c
    ./src/enc28j60_spi.c
    ./src/ethernetif.c
    ./src/lwipdemo.c
    ./src/stm32f1xx_hal_msp.c
    ./src/stm32f1xx_it.c
    ./src/system_stm32f1xx.c
    ./src/uart_printf.c
)

add_executable(lwip_test.elf ${PROJECT_SOURCES})

add_subdirectory(${CMAKE_SOURCE_DIR}/components/lwip-1.4.1 lwip_binary_dir)
target_link_libraries(lwip_test.elf lwip)

add_subdirectory(${CMAKE_SOURCE_DIR}/components/enc28j60 enc28j60_binary_dir)
target_link_libraries(lwip_test.elf enc28j60)

add_subdirectory(${CMAKE_SOURCE_DIR}/vendor/STM32F1xx stm32f1xx_hal_binary_dir)
target_link_libraries(lwip_test.elf stm32f1xx_hal)

set(ELF_FILE ${PROJECT_BINARY_DIR}/project/lwip_test/lwip_test.elf)
set(HEX_FILE ${PROJECT_BINARY_DIR}/project/lwip_test/lwip_test.hex)
set(BIN_FILE ${PROJECT_BINARY_DIR}/project/lwip_test/lwip_test.bin)

add_custom_command(TARGET "lwip_test.elf" POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -Obinary ${ELF_FILE} ${BIN_FILE}
    COMMAND ${CMAKE_OBJCOPY} -Oihex  ${ELF_FILE} ${HEX_FILE}
    COMMENT "Building lwip_test.bin and lwip_test.hex"

    COMMAND ${CMAKE_COMMAND} -E copy ${HEX_FILE} "${CMAKE_CURRENT_BINARY_DIR}/lwip_test.hex"
    COMMAND ${CMAKE_COMMAND} -E copy ${BIN_FILE} "${CMAKE_CURRENT_BINARY_DIR}/lwip_test.bin"

    COMMAND ${CMAKE_SIZE} --format=berkeley lwip_test.elf lwip_test.hex
    COMMENT "Invoking: Cross ARM GNU Print Size"
)
