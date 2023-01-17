# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_ffigen_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_ffigen SHARED
  "flutter_ffigen.c"
)

set_target_properties(flutter_ffigen PROPERTIES
  PUBLIC_HEADER flutter_ffigen.h
  OUTPUT_NAME "flutter_ffigen"
)

target_compile_definitions(flutter_ffigen PUBLIC DART_SHARED_LIB)
