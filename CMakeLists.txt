cmake_minimum_required(VERSION 3.7)
project(allinone)
set(CMAKE_CXX_STANDARD 11)

message("current dir: ${CMAKE_CURRENT_SOURCE_DIR}")

# sources
file(GLOB_RECURSE SOURCES_PATH "**/*.cpp")
string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}/" "" SOURCES "${SOURCES_PATH}")
# message("sources ${SOURCES}")

# headers
file(GLOB_RECURSE HEADERS_PATH "**/*.h" "**/*.hpp")
string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}/" "" HEADERS "${HEADERS_PATH}")
# message("headers ${HEADERS}")

# 3rd party includes
FOREACH (HEADER ${HEADERS})
    string(REGEX MATCH "^(cpp3rdlib|cppcomponent)[0-9_a-zA-Z\\/]+include" HEADER_DIR "${HEADER}")
    if ("${HEADER_DIR}" STRGREATER "")
        include_directories("${HEADER_DIR}")
        message("3rd include: ${HEADER_DIR}")
    endif ()
ENDFOREACH ()

include_directories(.)

add_executable(allinone "${SOURCES}")
