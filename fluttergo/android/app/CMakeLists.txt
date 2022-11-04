cmake_minimum_required(VERSION 3.4.1)

add_library( libhello SHARED IMPORTED GLOBAL )
set_target_properties(libhello PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/src/main/jniLibs/lib.so)
