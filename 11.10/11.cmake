11.3
系统默认编译器visual studio
cmake -S . -B ./build
       生成.sln
cmake --build .                          build
生成可执行文件
-S <path-to-source>：#指定CMake要构建的项目的根目录。
-B <path-to-build>：#指定要构建的build目录
# 查看generator
cmake -G
cmake -G "MinGW Makefiles"
cmake_minimum_required(VERSION 3.0)
# 项目名称
project(ExecutableExample)

# 指定C++标准（可选，但推荐）
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加可执行文件
add_executable(MyExecutable main.cpp)
add_executable(MyExcutable ${SOURCES})
# 添加静态库
add_library(Mystaticlib STATIC main.cpp)
# 添加动态链接库
add_library(Mysharedlib SHARED main.cpp)
# 链接
# 链接库到可执行文件
target_link_libraries(MyExecutable PRIVATE MyLib)PRIVATE 关键字指定 Mystaticlib 是 MyExecutable 的私有依赖。
target_link_libraries(MyExecutable Mystaticlib)一个静态库 Mystaticlib 和一个可执行文件 MyExecutable，并且它们都在你的 CMake 项目中定义

#获得一个目录下所有源文件
aux_source_directory(./tools TOOLS)

# 头文件搜索路径
include_directories(./include)
include_directories(${PROJECT_SOURCE_DIR}/include)绝对路径
add_executable(MyExecutable src/main.cpp)
target_include_directories(MyExecutable PRIVATE ${PROJECT_SOURCE_DIR}/include)非全局添加

# 变量
set(my_var dir)
  #定义一个变量包含所有源文件
  set(SOURCES source1.cpp source2.cpp)
  # 用命令行传递自定义变量
 
        cmake_minimum_required(VERSION 3.10)
       project(MyProject)

       # 定义一个自定义变量，默认值为 OFF
       set(MY_FEATURE_ENABLED OFF CACHE BOOL "Enable my feature")

       # 如果 MY_FEATURE_ENABLED 为 ON，则添加一些源文件或进行其他配置
       if(MY_FEATURE_ENABLED)
        message(STATUS "My feature is enabled")
       # 例如，添加额外的源文件
       add_executable(MyExecutable main.cpp extra_feature.cpp)
       else()
        message(STATUS "My feature is disabled")
        # 否则，不添加额外的源文件
       add_executable(MyExecutable main.cpp)
  命令行
  cmake -DMY_FEATURE-ENABLED=ON
endif()

# 查找外部包
find_package()
# 内置变量
${ CMAKE_CURRENT_SOURCE_DIR}
 CMAKE_CXX_STANDARD
 CMAKE_CXX_STANDARD_REQUIRED
 PROJECT_SOURCE_DIR 工程的根目录
 EXECUTABLE_OUTPUT_PATH 可执行文件的存放位置      

# 查找源文件
file(GLOB MAIN_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/*.c) GLOB_RECURSE 可
# 清除构建目录并重新构建
更改变量名CMakeLists被修改
源文件头文件目录结构被修改
编译器更改
# cmake --build
# cmake --build . --target cmake_learn_1
构建具体目标
#WINDOWS动态链接库
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
add_library()