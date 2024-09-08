#!/bin/bash

sudo apt update
sudo apt install cmake g++ gcc

cd $HOME

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd opencv
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=$HOME/opencv_contrib/modules ..
make -j4
sudo make install

cd $HOME/fras/
mkdir training build
mkdir training/images
mkdir training/faces


sudo apt install mariadb-server

exit
