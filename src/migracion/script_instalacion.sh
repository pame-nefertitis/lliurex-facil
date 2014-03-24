#!/bin/bash

echo "Bienvenido al asistente de instalación del Cefire"
echo "Lo primero es actualizar el equipo"

sudo lliurex-upgrade

echo "Ahora lo dejamos todo preparado en la carpeta personal"
cp -r data ~/
cp -r data-heavy ~/


#################################
echo " Si hay algún deb en la carpeta de data-heavy/debs/"
echo " se instalan en el equipo via dpkg -i"

for d in $(ls -1 debs/*.deb);do 
    echo "Instalando ${d}"
    dpkg -i ${d}
done

#################################
echo "Ahora se copia el .wine"
wine notepad

cp -r data/wine/* $HOME/.wine/

#################################
echo "Accesos directos"
cp data/desktops/* $HOME/Escritorio/

sed -e "s%_@_USER_@_%$HOME%g" $HOME/Escritorio/gesform.desktop
