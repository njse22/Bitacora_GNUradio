#!/bin/sh

# Scrit to install gnuradio 3.7 by pybombs 

# 1. install depends of pybombs, gnuradio and hud 

sudo apt install git cmake g++ libboost-all-dev libgmp-dev swig python3 python3-pip python3-numpy python3-mako python3-sphinx python3-lxml doxygen libfftw3-dev libcomedi-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev python3-pyqt5 liblog4cpp5-dev libzmq3-dev python3-yaml python3-click python3-click-plugins python3-zmq python3-gi python3-gi-cairo gir1.2-gtk-3.0 libboost-all-dev libusb-1.0-0-dev python3-docutils build-essential

sudo pip3 install mako requests numpy

# 2. install and configure pybombs 

sudo -H pip3 install pybombs
mkdir pybombs && cd pybombs
pybombs auto-config 

#pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git
#modified repository
pybombs recipes add gr-recipes git+https://github.com/njse22/gr-recipes.git
pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git
pybombs prefix init ~/../pybombs/gr37 -R gnuradio-stable

# 5. install gr-drm 
cd ~/../pybombs/gr37/src/
git clone https://github.com/kit-cel/gr-drm.git
cd gr-drm 
git checkout drmrx
git merge master 
cd ../..
pybombs install gr-drm 
