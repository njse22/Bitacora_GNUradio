# Instalación de sodira en Ubuntu 18.04 LTS

1. Abrir la consola de comandos con `Ctrl + Alt + T`
2. Escribir `sudo apt install wine-wine64-development`
3. Ir a la página web de [sodiraSDR](http://dsp4swls.de/sodirasdr/sodirasdreng.html)
4. Descargar el archivo .zip 
5. Para nuestro ejemplo instalaremos el archivo en la siguiente dirección:
 `~/software/sodira` usted puede hacerlo en otro directorio si así lo desea 
6. en la consola estando en el directorio de instalación escribir:
 `sudo unzip sodiraSDR.zip` para descomprimir el archivo
7. para nuestro caso utilizaremos el RTL-SDR para utilizarlo con sodira descargue [este](ExtIO_RTL2832.dll) archivo, en caso tal de que usted vaya a utilizar otro sdr 
consulte [aquí](http://www.hdsdr.de/hardware.html) el archivo o libreria indicado para su sdr 
8. En la carpeta que se genero después de descomprimir el .zip del paso 6 escriva en 
consola `wine sodiraSRD.exe` para ejecutar el programa.
9. en la pestaña de configuración del programa seleccione *ExtIO Receiver* 
10. habilite la opción *Using ExtIO receiver*
11. de click en el boton *Select ExtIO* y seleccione el archivo del paso 7, ahora
presione el boton *Load + Start*

