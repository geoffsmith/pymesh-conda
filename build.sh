export PYMESH_PATH=`pwd`

git submodule update --init

cd $PYMESH_PATH/third_party
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make
make install

cd $PYMESH_PATH
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make
# make tests

cd $PYMESH_PATH
./setup.py build
./setup.py install
