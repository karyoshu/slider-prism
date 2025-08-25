#!/bin/bash
bash ./build.sh
rm -rf build/
rm -rf slider-prism.pdx/ slider-prism.pdx.zip
mkdir build
cd build
cmake ..
make
mv ../slider-prism.pdx ./
pdsim ./slider-prism.pdx
