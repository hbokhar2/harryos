cmake_minimum_required(VERSION 3.10)
project(harryos)

set(CMAKE_C_FLAGS "-ffreestanding -02 -Wall -Wextra")
set(CMAKE_EXE_LINKER_FLAGS "-nostdlib -lgcc")

add_executable(harryos src/kernel.c src/boot.s)

target_link_libraries(harryos)