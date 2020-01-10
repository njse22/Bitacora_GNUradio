#!/bin/sh

# Scrit to install gnuradio 3.7 by pybombs 

# 1. install depends of pybombs, gnuradio and hud 

sudo apt install git 
sudo apt install cmake
sudo apt install g++
sudo apt install libboost-all-dev 
sudo apt install libgmp-dev 
sudo apt install swig 
sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-numpy 
sudo apt install python3-mako 
sudo apt install python3-sphinx 
sudo apt install python3-lxml 
sudo apt install doxygen 
sudo apt install libfftw3-dev 
sudo apt install libcomedi-dev 
sudo apt install libsdl1.2-dev 
sudo apt install libgsl-dev 
sudo apt install libqwt-qt5-dev 
sudo apt install libqt5opengl5-dev 
sudo apt install python3-pyqt5 
sudo apt install liblog4cpp5-dev 
sudo apt install libzmq3-dev 
sudo apt install python3-yaml 
sudo apt install python3-click 
sudo apt install python3-click-plugins 
sudo apt install python3-zmq 
sudo apt install python3-gi 
sudo apt install python3-gi-cairo 
sudo apt install gir1.2-gtk-3.0
sudo apt install libboost-all-dev 
sudo apt install libusb-1.0-0-dev 
sudo apt install python3-docutils 
sudo apt install build-essential
sudo pip3 install mako requests numpy

# 2. install and configure pybombs 

sudo -H pip3 install pybombs
mkdir pybombs && cd pybombs
pybombs auto-config 
#official repository 
#pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git
#modified repository
pybombs recipes add gr-recipes git+https://github.com/njse22/gr-recipes.git
pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git
#pybombs prefix init ~/Software/pybombs/gnuradio-3.7 -a gr37
pybombs config default_prefix gnuario-stable

#3. install gnuradio-3.7

#pybombs install gnuradio37
pybombs install gnuradio

# 4. install gr-drm 

cd ~/Software/pybombs/gnuradio-3.7/src/
git clone https://github.com/kit-cel/gr-drm.git
cd gr-drm 
git checkout drmrx
git merge master 
cd ../..
pybombs install gr-drm 
