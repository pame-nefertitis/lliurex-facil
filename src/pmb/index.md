PMB
===

Características generales
------------------------

_PMB_ es un *SIGB* (_Sistema Integrado de Gestión de Bibliotecas_) completamente libre.
Se trata de una aplicación web que se basa en un servidor HTTP (básicamente Apache, aunque no es obligatorio),
una base de datos MySQL y el lenguaje PHP. PMB se beneficia de la flexibilidad de las aplicaciones de Internet.
Consideraciones previas a tener en cuenta:

* Los botones del navegador página anterior y página siguiente permiten la navegación de una página a otra en PMB.
* El botón del navegador Actualizar la página permite volver a cargar en pantalla la página del PMB.
* Cuando se lea en la pantalla un mensaje que empieza por “Actualizando” no se debe hacer clic sobre el botón de página anterior, es necesario dejar que la actualización se realice completamente.
* Cuando se están realizando operaciones importantes en la base de datos (añadir, eliminar), no se debe parar la carga de una página por que se puede interrumpir el tratamiento de los datos, y puede ser que la base de  datos sufra un deterioro. Sobre todo no se debe pulsar el botón “parar la carga” cuando se esté realizando una restauración de la base de datos, una copia de seguridad o se esté optimizando la base de datos.



Instalación del PMB
-------------------

Para instalar el *PMB*, hay que ir al *Centro de contro de LliureX* en el menú: _Administración de LliureX_

Lo encontramos en la categoría _Software_

![Captura](./../../imgs/pmb/cap1.png)

Cuando se hace clic sobre él botón de instalación del *PMB* se muestra un mensaje indicando que el proceso va a tomar cierto tiempo.

![Captura](./../../imgs/pmb/cap2.png)

Se muestra un progreso en el que se ven los paquetes que son necesarios para el correcto funcionamiento del PMB.

![Captura](./../../imgs/pmb/cap3.png)

Por último se muestra un aviso de que la instalación ha tenido éxito.

![Captura](./../../imgs/pmb/cap4+paciencia.png)

Se puede comprobar que el botón de la instalación ha sido deshabilitado.

![Captura](./../../imgs/pmb/cap5.png)


Uso del PMB
-----------

Una vez el PMB está instalado para utilizarlo podemos acceder a él desde : _Aplicaciones->Oficina_

![Captura](./../../imgs/pmb/cap6a-desktop.png)

Lo que hace es abrir el navegador indicando la dirección del PMB en nuestro equipo. En el aula _LliureX_ o en la instalación de Bibliotecas la dirección es :

```
http://pmb
```

![Captura](./../../imgs/pmb/cap6b.png)

El usuario y la contraseña por defecto es _admin_ , es una buena idea cambiarlo más adelante. Como se puede ver, también es posible acceder a la parte del cliente de PMB (_OPAC_) desde esa ventana principal. Los usuarios de la biblioteca utilizarán esta interfaz para la realización de las tareas más habituales en la biblioteca.

![Captura](./../../imgs/pmb/cap7.png)

Se detallan ahora las opciones más importantes que pueden realizar los usuarios de la biblioteca a través de la interfaz de la _OPAC_

OPAC
----


Desde esta pantalla el usuario puede consultar el catálogo de libros, realizar reservas y consultar sus préstamos. 

![Captura](./../../imgs/pmb/cap8_OPAC.png)


Administración del PMB
----------------------

![Captura](./../../imgs/pmb/cap9.png)
![Captura](./../../imgs/pmb/cap10.png)


Copias de seguridad
-------------------

![Captura](./../../imgs/pmb/cap11.png)

Si ya era usuario de pmb puede restaurar la copia de seguridad en ...

![Captura](./../../imgs/pmb/cap12.png)
![Captura](./../../imgs/pmb/cap13.png)

Si su copia de seguridad proviene de lliurex 12.06 le indicará que ha de actualizar la base de datos.

![Captura](./../../imgs/pmb/cap14.png)

Pulse sobre el texto actualizar.

![Captura](./../../imgs/pmb/cap15.png)


![Captura](./../../imgs/pmb/cap16.png)

Se ha completado la actualización ya puede trabajar normalmente.

