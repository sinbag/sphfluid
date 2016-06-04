cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake_modules/")
##############################################################################
project(SPH)

#set(EXECUTABLE_OUTPUT_PATH .)

#set(TESTDRIVE_BIN_PATH bin)

#file(MAKE_DIRECTORY ${TESTDRIVE_BIN_PATH})

set(CMAKE_BUILD_TYPE Release)  # None | Debug  | Release | RelWithDebInfo | MinSizeRel

find_package(Boost 1.54.0 COMPONENTS system filesystem date_time program_options REQUIRED)

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
find_package(GLEW REQUIRED)
find_package(GLM)
find_package(AntTweakBar)
find_package(FreeImage REQUIRED)
find_package(OpenEXR REQUIRED)
find_package(IlmBase REQUIRED)
find_package(GLFW REQUIRED)
find_package(X11)
find_package(Threads REQUIRED)

set (CMAKE_CXX_FLAGS "-std=c++11 -DGLEW_GLEXT_PROTOTYPES -DGL_GLEXT_PROTOTYPES -g -Wall")

set(Boost_USE_STATIC_LIBS   ON)
set(Boost_USE_MULTITHREADED ON)

include_directories(${Boost_INCLUDE_DIRS})

include_directories(
        ./src
        ${Boost_INCLUDE_DIR}
        ${OPENEXR_INCLUDE_DIR}
        ${ILMBASE_INCLUDE_DIR}
        ${GLFW_INCLUDE_DIR}
)

##sources
file(GLOB SOURCES
        ./sph_system.cpp
        ./sph_timer.cpp
        ./coreGL/.cpp
)

##headers
file(GLOB HEADERS
        ./*.h
        ./coreGL/.h
)


##Done!

##############################################################################
function(make_exec exec_name)
        add_executable(${exec_name} ${HEADERS} ${SOURCES} ./${exec_name}.cpp)
        target_link_libraries(
                ${exec_name}
                ${GLUT_LIBRARY}
                ${GLFW_LIBRARIES}
                ${GLEW_LIBRARY}
                ${OPENGL_LIBRARY}
                ${Boost_LIBRARIES}
                ${FREEIMAGE_LIBRARY}
                ${OPENEXR_LIBRARIES}
                ${ILMBASE_LIBRARIES}
                ${X11_LIBRARIES}
                ${X11_Xinput_LIB}
                ${CMAKE_THREAD_LIBS_INIT}
        )
endfunction()

##############################################################################

##Create executables by calling functions defined above:
make_exec(sph_main)
