
#
set(CMAKE_C_COMPILER "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-gcc")
set(CMAKE_CXX_COMPILER "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-g++")
set(CMAKE_OBJCOPY "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-objcopy")
set(CMAKE_SIZE "${CMAKE_SOURCE_DIR}/toolchain/gcc-arm-none-eabi-5_4-2016q3/bin/arm-none-eabi-size")

add_definitions(
-DUSE_HAL_DRIVER
-DSTM32F103xE
)

set(MCU_FLAGS "-mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16")
set(CMAKE_C_FLAGS "${MCU_FLAGS} -w -Wno-unknown-pragmas")
set(CMAKE_C_FLAGS_DEBUG "-O0 -g2 -ggdb")
set(CMAKE_C_FLAGS_RELEASE "-O3")

set(CMAKE_BUILD_TYPE "Debug")

include_directories(./inc)

SET(C_SOURCES 
    ./src/main.c
    ./src/enc28j60_spi.c
    ./src/ethernetif_user.c
    ./src/lwipdemo.c
    ./src/stm32f1xx_hal_msp.c
    ./src/stm32f1xx_it.c
    ./src/system_stm32f1xx.c
    ./src/uart_printf.c
)

add_executable(lwip_test.elf C_SOURCES)

add_subdirectory(${CMAKE_SOURCE_DIR}/components/lwip-1.4.1)
target_link_libraries(lwip_test.elf lwip)

add_subdirectory(${CMAKE_SOURCE_DIR}/components/enc28j60)
target_link_libraries(lwip_test.elf enc28j60)

add_subdirectory(${CMAKE_SOURCE_DIR}/vendor/STM32F1xx)
target_link_libraries(lwip_test.elf stm32f1xx_hal)

set(ELF_FILE ${PROJECT_BINARY_DIR}/lwip_test.elf)
set(HEX_FILE ${PROJECT_BINARY_DIR}/lwip_test.hex)
set(BIN_FILE ${PROJECT_BINARY_DIR}/lwip_test.bin)

add_custom_command(TARGET "lwip_test.elf" POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -Obinary ${ELF_FILE} ${BIN_FILE}
    COMMAND ${CMAKE_OBJCOPY} -Oihex  ${ELF_FILE} ${HEX_FILE}
    COMMENT "Building lwip_test.bin and lwip_test.hex"

    COMMAND ${CMAKE_COMMAND} -E copy ${HEX_FILE} "${CMAKE_CURRENT_BINARY_DIR}/lwip_test.hex"
    COMMAND ${CMAKE_COMMAND} -E copy ${BIN_FILE} "${CMAKE_CURRENT_BINARY_DIR}/lwip_test.bin"

    COMMAND ${CMAKE_SIZE} --format=berkeley lwip_test.elf lwip_test.hex
    COMMENT "Invoking: Cross ARM GNU Print Size"
)