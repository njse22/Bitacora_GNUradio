#!/bin/sh

# Scrit to install gnuradio 3.7 by pybombs 

# 1. install depends of pybombs, gnuradio and hud 

sudo apt install git cmake g++ libboost-all-dev libgmp-dev swig python3 python3-pip python3-numpy python3-mako python3-sphinx python3-lxml doxygen libfftw3-dev libcomedi-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev python3-pyqt5 liblog4cpp5-dev libzmq3-dev python3-yaml python3-click python3-click-plugins python3-zmq python3-gi python3-gi-cairo gir1.2-gtk-3.0 libboost-all-dev libusb-1.0-0-dev python3-docutils build-essential

sudo pip3 install mako requests numpy

# 2. install and configure pybombs 

sudo -H pip3 install pybombs
mkdir pybombs && cd pybombs
pybombs auto-config 
<<<<<<< HEAD
<<<<<<< HEAD
#official repository 
=======
#original repository 
>>>>>>> origin/doc
=======

>>>>>>> 3c714c097e13c0c4bb53f60a33133acb4b1b9356
#pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git
#modified repository
pybombs recipes add gr-recipes git+https://github.com/njse22/gr-recipes.git
pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git
<<<<<<< HEAD
<<<<<<< HEAD
#pybombs prefix init ~/Software/pybombs/gnuradio-3.7 -a gr37
pybombs config default_prefix gnuario-stable
=======
pybombs prefix init ~/Software/pybombs/gnuradio-3.7 -a gr37
#pybombs config default_prefix gnuario-stable

# 3. install uhd

pybombs install uhd
>>>>>>> origin/doc

=======

pybombs prefix init ~/Software/pybombs/gnuradio-3.7 -a gr37

# 3. install uhd

pybombs install uhd

>>>>>>> 3c714c097e13c0c4bb53f60a33133acb4b1b9356
# 4. install gnuradio-3.7

pybombs install gnuradio37

# 5. install gr-drm 

cd ~/Software/pybombs/gnuradio-3.7/src/
git clone https://github.com/kit-cel/gr-drm.git
cd gr-drm 
git checkout drmrx
git merge master 
cd ../..
pybombs install gr-drm 
