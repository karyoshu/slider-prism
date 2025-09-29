#!/bin/bash
rm -rf build/
rm -rf slider-prism.pdx/ slider-prism.pdx.zip
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=$PLAYDATE_SDK_PATH/C_API/buildsupport/arm.cmake ..
make
mv ../slider-prism.pdx ./
zip -r slider-prism.pdx.zip slider-prism.pdx/
