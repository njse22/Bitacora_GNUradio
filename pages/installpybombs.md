# Instalasión de Pybombs

Pybombs es una maquina virtual de python, que nos ayudara en la instalación de GNU Radio
y/o otros paquetes que se encuentren fuera de su repositorio para saber mas sobre pybombs
usted puede acceder al siguiente [enlace](https://www.gnuradio.org/blog/2016-06-19-pybombs-the-what-the-how-and-the-why/) por ahora veremos como instalarlo y configurarlo para instalar GNU Radio 3.8 

## Pasos 

1. pybombs se instala mediante pip en este caso usaremos pip3 para instalarlo escriba 
en la consola de comandos `sudo apt install python3-pip`

2. procederemos entonces a instalar pybombs en la misma consola escriba 
`sudo -H pip3 install pybombs`

3. escoja un lugar donde colocar pybombs puede hacerlo en `/home/usuario` (mejor
conosido como `~/`) o en otro lugar para el ejemplo lo haremos en `~/software/pybombs/`
entonces creamos este directorio con `mkdir pybombs` y luego entramos al mismo

4. dentro de `~/software/pybombs/` ejecutamos el comando `pybombs auto-config`

5. ahora agregamos las "recetas" de pybombs en consola 
`pybombs recipes add gr-recipes git+https://github.com/gnuradio/gr-recipes.git`
y luego: 
pybombs recipes add gr-etcetera git+https://github.com/gnuradio/gr-etcetera.git

6. para configurar la instalación de GNU Radio 3.8 vamos a: 
`cd ~/.pybombs/recipes/gr-recipes/` y dentro de este ejecutamos `vi gnuradio.lwr`
y cambiamos las siguientes lineas 

