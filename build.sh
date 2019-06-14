#!/bin/bash

set -e

export PYMESH_PATH=`pwd`

git submodule update --init

CMAKE_PLATFORM_FLAGS+=(-DCMAKE_TOOLCHAIN_FILE="${RECIPE_DIR}/cross-linux.cmake")

cd $PYMESH_PATH/third_party
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ${CMAKE_PLATFORM_FLAGS[@]} ..
make -j5
make install

cd $PYMESH_PATH
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ${CMAKE_PLATFORM_FLAGS[@]} ..
make
# make tests

cd $PYMESH_PATH
# ./setup.py build  # I think this is the same as the above build stuff
./setup.py install

