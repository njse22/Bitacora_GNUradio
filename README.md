# Bitacora GNUradio
Bitacora del trabajo realizado con GNUradio en el grupo i2t 

## ¿Qué es GNUradio? 

[GNUradio](https://www.gnuradio.org/) es un software [opensource](https://opensource.com/resources/what-open-source) para el procesamiento de señales


## Trabajo con FM 

El primer proyecto trabajado con GNUradio fue el relacionado con FM para esta primer
proyecto se consulto con diferentes fuentes biográficas entre ellas la de la página oficial de GNU Radio, principalmente.

Para el primer proyecto, se planteo la implementación de un receptor de FM, se recomienda que para esta parte se familiarice con la interfaz de GNU Radio companion, para esto puede revisar el siguiente [enlace](https://wiki.gnuradio.org/index.php/Tutorials) 



## Trabajo con DRM (digital Radio Moundiale)

### fase de transmisión 

para la primera parte de esta sección se comenzó con la integración de la libreria
[gr-drm](https://github.com/kit-cel/gr-drm) creada por [KIT](https://www.kit.edu/english/), después de haver instalado la libreria se trabajo en base este
 [documento](documentos/drm_transmitter_gnuradio.pdf) para crear el flujo en GNUradio el resultado de este trabajo fue [este](documentos/drm-transmiter.grc), después de esto se 
busco diferentes [archivos de audio](audio_sources) para probar la transmisión.

Se comprobó con ayuda del analizador de señales que efectivamente la transmisión de la 
señal fue exitosa y se procedió con la siguiente fase   

### fase de recepción 

Para esta segunda fase se busco diferentes demoduladores de DRM la primera opción que se
estudio fue la de [DREAM](https://drm.sourceforge.io/wiki/index.php/Main_Page) con el 
cual se tuvo diferentes problemas de usabilidad mas que otra cosa, aparte de las 
limitaciones que ofrecía para nuestro caso DREAM sólo permitía la sincronización de 
frecuencias en las cuales ya existían emisoras que funcionaban con el estándar DRM, en 
nuestro caso se quería escuchar una emisora que no estaba en dicha lista (por no estar
registrada y porque el estándar DRM no esta implementado en Colombia) debido a esto se
busco otra alternativa. 

como segunda alternativa se estudió la opción de trabajar con el [Gqrx](http://gqrx.dk/) integrado con  [IT++](http://itpp.sourceforge.net/4.3.1/), [mbelib](https://github.com/szechyjs/mbelib), [dsd](https://github.com/szechyjs/dsd)
esto basado en el proyecto [Digital Speech Decoder](https://www.george-smart.co.uk/scrapbook/digital_speech_decoder/), ya que esta implementación fue hecha en Xubuntu 14 (y ya que la misma fallo en Ubuntu 18) se decidió crear una maquina virtual con
dicho sistema operativo, la instalación de todos los software de este proyecto fue exitosa sin embargo a la hora de ejecutar
Gqrx el mismo fallo esto debido posiblemente a que la versión instalada del mismo no haya sido compatible con la versión del 
sistema operativo, por esta razón y ya que trabajar en un sistema operativo del año 2014, resulta un poco arcaico, se decidió 
abandonar esta opción.

Otra de las alternativas probadas para esta fase fue la de utilizar el software [sodiraSDR](http://dsp4swls.de/sodirasdr/sodirasdreng.html), 
en este caso el software es un .exe por este motivo se decidió utilizar [wine](https://www.winehq.org/) la guía de como se instalo el sofware [aquí](documentos/installSodiraSDR.md)


