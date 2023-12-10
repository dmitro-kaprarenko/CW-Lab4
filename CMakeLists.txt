cmake_minimum_required(VERSION 3.10)

project(calculator_project)

set(SOURCES calculator.cpp main.cpp)
add_library(calculator_lib ${SOURCES})

add_executable(calculator_app main.cpp)
target_link_libraries(calculator_app calculator_lib)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

