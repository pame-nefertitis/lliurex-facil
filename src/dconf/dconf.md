Hace mucho mucho tiempo, en la anterior versión de LliureX. Las preferencias del escritorio, fondos de pantalla, bordes de ventana... se guardaban en una herramienta de configuración llamada Gconf.

Siguiendo el cambio establecido por freedesktop, Ubuntu (y LliureX), migraron su sistema de configuración a Dconf. 

El funcionamiento es bastante similar, ya que se trata de almacenar en ficheros unos parámetros para que los lean los diferentes programas.

En LliureX, se almacenan esos cambios en este directorio:


/etc/dconf/db/lliurex.d/

Y cuando se ejecuta :

dconf update

Todos esos parámetros que están en el directorio se guardan en la base de datos que luego el usuario utilizará para llegar a sus configuraciones.

Por ejemplo:

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

Son los parámetros que establecen la configuración del salvapantallas y que cuando se pulsa la combinación de teclas Alt+F10 se maximicen las ventanas.

Una vez modificados los ficheros, hay que ejecutar el dconf update y borrarle a los usuarios su copia de la base de datos que tienen en su directorio personal en el directorio de dconf.

```shell
rm -rf ~/.config/dconf 

```
Espero que os sirva de ayuda
