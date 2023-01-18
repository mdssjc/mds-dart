cmake_minimum_required(VERSION 3.10)

project(flutter_ffigen_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_ffigen SHARED
  duktape.c
)

set_target_properties(flutter_ffigen PROPERTIES
  PUBLIC_HEADER duktape.h
  PRIVATE_HEADER duk_config.h
  OUTPUT_NAME "flutter_ffigen"
)

if (WIN32)
set_target_properties(flutter_ffigen PROPERTIES
  WINDOWS_EXPORT_ALL_SYMBOLS ON
)
endif (WIN32)

target_compile_definitions(flutter_ffigen PUBLIC DART_SHARED_LIB)
