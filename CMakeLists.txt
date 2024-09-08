cmake_minimum_required(VERSION 3.10)
project(FRAS VERSION 1.0 LANGUAGES CXX)
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(FRAS source/frasapp.cpp)
target_link_libraries(FRAS ${OpenCV_LIBS})

add_executable(face-crop source/face-crop.cpp)
target_link_libraries(face-crop ${OpenCV_LIBS})

#add_executable(training source/training.cpp)
#target_link_libraries(training ${OpenCV_LIBS})

add_executable(face-rec source/face-rec.cpp)
target_link_libraries(face-rec ${OpenCV_LIBS})


set_target_properties(FRAS PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
install(TARGETS FRAS DESTINATION bin)
