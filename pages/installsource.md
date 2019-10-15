# Intalar GNU Radio 3.8 desde el código fuente en Ubuntu 

En nuestro caso instalaremos GNU Radio en la siguiente dirección del equipo `~/Software/gnuradio/gnuradio`

## Instalar dependencias 

GNU Radio tiene las siguientes dependencias: 

    - g++
    - git
    - make
    - cmake
    - sdcc
    - guile
    - python-dev
    - SWIG
    - FFTW 3.X (libfftw3-dev)
    - cppunit (libcppunit-dev)
    - Boost 1.35 (o anterior, pero no 1.46, 1.47 o 1.52)
    - GSL GNU Scientific Library (libgsl0-dev)
    - libusb and libusb-dev
    - ALSA (alsa-base, libasound2 y libasound2-dev)

Para instalar las copie la siguiente linea de comando en su consola: 

`sudo apt install git cmake g++ libboost-all-dev libgmp-dev swig python3-numpy python3-mako python3-sphinx python3-lxml doxygen libfftw3-dev libcomedi-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev python3-pyqt5 liblog4cpp5-dev libzmq3-dev python3-yaml python3-click python3-click-plugins python3-zmq python3-gi python3-gi-cairo gir1.2-gtk-3.0 python-cheetah3`
 
## Instalar GNU Radio 

1. Estando en la carpeta `~/Software/gnuradio/` escribimos el comando:
`git clone --recursive https://github.com/gnuradio/gnuradio.git`

2. escribimos los siguientes comandos: 
`cd gnuradio`
`mkdir build`
`cd build`
`cmake ../`
`make`

*NOTA:*
Luego de haber ejecutado `cmake ../` asegurece de que la sección `Gnuradio disabled components` este vaciá es decir que todas
las librerías estén habilitadas 

3. escribimos en consola `make test` la consola nos dirá que todo el proceso fue exitoso, en caso contrario habría que revisar 
que fue lo que fallo en medio del proceso, corregirlo y volver a instalar 

4. Si en el punto 3 todo salio bien procedemos a ejecutar 
`sudo make install`

5. Escriba el comando `sudo ldconfig` y ejecute `gnuradio-companion`

con esto ya estaría instalado GNU Radio 

*NOTA:*
si en el paso 2 la consola le muestra un mensaje diciendo que no tiene permisos para ejecutar o escribir intente ejecutarlos 
con `sudo` es decir : `sudo cmake ../` , `sudo make` , `sudo make test`

si por alguna razón decide desinstalar GNU Radio hagalo de la siguiente forma: 

en la carpeta de construcción del proyecto `~/Software/gnuradio/gnuradio/build` ejecute el comando `sudo make uninstall` o 
`sudo make -n install`




