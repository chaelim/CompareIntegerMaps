# Use good Visual C++ compiler options for benchmarking
if (MSVC)
    add_definitions(-D_SECURE_SCL=0 -D_HAS_EXCEPTIONS=0)
    set(CMAKE_C_FLAGS "/GS- /Zi" CACHE STRING "Common C compiler settings" FORCE)
    set(CMAKE_CXX_FLAGS "/GS- /Zi" CACHE STRING "Common C++ compiler settings" FORCE)
    set(CMAKE_C_FLAGS_DEBUG "/MTd /Od /D_DEBUG" CACHE STRING "Additional C compiler settings in Debug" FORCE)
    set(CMAKE_CXX_FLAGS_DEBUG "/MTd /Od /D_DEBUG" CACHE STRING "Additional C++ compiler settings in Debug" FORCE)
    set(CMAKE_C_FLAGS_RELEASE "/MT /O2 /Ob1 /DNDEBUG" CACHE STRING "Additional C compiler settings in Release" FORCE)
    set(CMAKE_CXX_FLAGS_RELEASE "/MT /O2 /Ob1 /DNDEBUG" CACHE STRING "Additional C++ compiler settings in Release" FORCE)
    set(CMAKE_EXE_LINKER_FLAGS "/DYNAMICBASE:NO /DEBUG /INCREMENTAL:NO" CACHE STRING "Common linker settings" FORCE)
    set(CMAKE_EXE_LINKER_FLAGS_DEBUG "" CACHE STRING "Additional linker settings in Debug" FORCE)
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "" CACHE STRING "Additional linker settings in Release" FORCE)
endif()