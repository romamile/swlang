#!/bin/bash

echo " == Installing packages"
sudo apt-get install cmake libfreeimage-dev libfreeimageplus-dev \
  qt5-default freeglut3-dev libxi-dev libxmu-dev liblua5.3-dev \
  lua5.3 doxygen graphviz libgraphviz-dev asciidoc


echo " == Installing ARGoS"

git clone https://github.com/ilpincy/argos3.git argos3

cd argos3
mkdir build_simulator
cd build_simulator
cmake ../src
make


# installation
make doc           # documentation is required!
sudo make install


echo " == Installing epuck plugin"

git clone https://github.com/demiurge-project/argos3-epuck argos3-epuck

cd argos3-epuck
mkdir build
cd build
cmake ../src
make

# installation
sudo make install
