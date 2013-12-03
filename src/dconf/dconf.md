DCONF
=====

Hace mucho mucho tiempo, en la anterior versión de LliureX. Las preferencias del escritorio, fondos de pantalla, bordes de ventana... se guardaban en una herramienta de configuración llamada Gconf.

Siguiendo el cambio establecido por freedesktop, Ubuntu (y LliureX), migraron su sistema de configuración a Dconf. 

El funcionamiento es bastante similar, ya que se trata de almacenar en ficheros unos parámetros para que los lean los diferentes programas.

En LliureX, se almacenan esos cambios en este directorio:

```shell

/etc/dconf/db/lliurex.d/

```

Y cuando se ejecuta :

```shell

dconf update

```

Todos esos parámetros que están en el directorio se guardan en la base de datos que luego el usuario utilizará para llegar a sus configuraciones. Vamos a poner un ejemplo:

```ini

[org/gnome/settings-daemon/plugins/power]
sleep-display-ac=3600
sleep-display-battery=3600

[org/gnome/desktop/session]
idle-delay=3600

[org/gnome/desktop/screensaver]
lock-delay=3600

[org/gnome/desktop/wm/keybindings]
toggle-maximized=['F10']

```

Son los parámetros que establecen la configuración del salvapantallas y que cuando se pulsa la combinación de teclas Alt+F10 se maximicen las ventanas (*esto es más útil de lo que parece*).

Una vez modificados los ficheros, hay que ejecutar el dconf update y borrarle a los usuarios su copia de la base de datos que tienen en su directorio personal en el directorio de dconf.

```shell

rm -rf ~/.config/dconf 

```

Por supuesto, hay que salir de la sesión y volver a entrar para que los cambios tengan efecto.


USO de esto
-----------

Si lo que queremos es crear alguna configuración en concreto para los usuarios, lo que podremos hacer es crearnos un fichero del estilo:

```shell

99_micole_desktop.setting

```

Y establecer los paramétros que deseemos. Por ejemplo, hacer invisibles los iconos del escritorio:

```ini

[org/gnome/nautilus/desktop]
computer-icon-visible=true
home-icon-visible=true
trash-icon-visible=true
volumes-visible=true

```

Ejecutamos 

```shell

dconf update

```

Borramos las configuraciones de los usuarios, tal y como hemos visto antes. Y *Alehop!* ya no tenemos iconos en el escritorio.


Espero que os sirva de ayuda
