cmake_minimum_required(VERSION 3.5)
project(mcu_framework)

option(FOR_STM32 "use stm32" OFF)

add_subdirectory(./project/${PROJECT})

