# Bitacora GNUradio
Bitacora del trabajo realizado con GNUradio en el grupo i2t 

## ¿Qué es GNUradio? 

[GNUradio](https://www.gnuradio.org/) es un software [opensource](https://opensource.com/resources/what-open-source) para el procesamiento de señales


## Trabajo con FM 

El primer proyecto trabajado con GNUradio fue el relacionado con FM para esta primer
proyecto se consulto con diferentes fuentes biograficas



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

como segunda alternativa se miro la opción de trabajar con el [Gqrx](http://gqrx.dk/) 
