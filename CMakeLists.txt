cmake_minimum_required(VERSION 3.7)
project(allinone)
set(CMAKE_CXX_STANDARD 11)

message("source dir: ${CMAKE_SOURCE_DIR}")

# sources
file(GLOB_RECURSE sources_path "**/*.cpp")
string(REPLACE "${CMAKE_SOURCE_DIR}/" "" sources "${sources_path}")
# message("sources ${sources}")

# headers
file(GLOB_RECURSE headers_path "**/*.h" "**/*.hpp")
string(REPLACE "${CMAKE_SOURCE_DIR}/" "" headers "${headers_path}")
# message("headers ${headers}")

# 3rd party includes
foreach (header ${headers})
    string(REGEX MATCH "^[0-9_a-zA-Z\\/]+/include" extra_header_dir ${header})
    if ("${extra_header_dir}" STRGREATER "")
        include_directories(${extra_header_dir})
        message("extra include: ${extra_header_dir}")
    endif ()
endforeach ()

include_directories(.)
include_directories(muse_recall/src)

add_executable(pseudo_bin ${sources})
