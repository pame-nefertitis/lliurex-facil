JugaLlengua en LliureX
=======================

JugaLlengua es una aplicación Flash preparada únicamente para Windows que no funciona bien en el Wine (emulador de Windows) que por defecto está establecido en *LliureX*. Sin embargo, podemos disfrutar de esta aplicación mediante PlayOnLinuX.

Para hacerlo funcionar los pasos son los siguientes:

* Instalamos el playonlinux versión 4.2.1-1~lliurex1306 (se está poniendo en los repositorios mientras escribo estas líneas), desde el Synaptic o desde el Centro de software.
* Descargamos el programa desde la web de política lingüística. http://www.cece.gva.es/polin/es/publicacions_jugallengua.html
* Arrancamos el playonlinux y generamos una nueva máquina de Wine. Para ello, pulsamos el botón **Configure**
* Rellenamos los campos con los valores que creamos correspondientes. (jugallengua como nombre)
* Una vez creada la máquina de Wine, lo que hacemos es instalar otro Wine para esa máquina.
* Instalamos la versión 1.4.1 de Wine (ver capturas abajo)
* En *install componentes*:
	* Instalamos dsound
	* Instalamos quartz
	* Instalamos Flash Player
* Y cuando esté todo listo en el apartado "Miscellaneous", ejecutamos el exe de la instalación de JugaLlengua que previamente hemos bajado. (*instal.exe*). 
* Ya queda menos, en la pantalla "General" pulsamos el botón "Make a shortcut from this virtual drive" y seleccionamos el JugaLlengua (ojo no seleccionar el desinstalador ^_^ )
* ¡Y listo!
* ¡Ya podemos crear un acceso directo al escritorio a nuestro JugaLlengua y a aprender!


[playonlinux-jugallengua-create-vm]: https://raw.github.com/aberlanas/lliurex-facil/master/imgs/playonlinux/playonlinux-jugallengua-create-vm.png "PlayOnLinuX VM"