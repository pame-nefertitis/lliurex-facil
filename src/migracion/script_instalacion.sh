#!/bin/bash

echo "Bienvenido al asistente de instalación del Cefire"
echo "Lo primero es actualizar el equipo"

sudo lliurex-upgrade


echo "INSTALACION algunos paquetes"
sudo apt-get install oracle-java6-installer 
sudo apt-get install oracle-java7-installer oracle-java7-set-default
sudo apt-get install filezilla
sudo apt-get install openssh-server


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

echo "Copiamos los iconso a /opt/"
sudo cp -r data/icons /opt/

echo "Copiamos los desktops al escritorio"

cp data/desktops/* $HOME/Escritorio/

echo "El del Gesform requiere de trabajo adicional"
sed -e "s%_@_USER_@_%$HOME%g" $HOME/Escritorio/gesform.desktop

echo "Le damos permisos de ejecución a todos"
chmod +x $HOME/Escritorio/*.desktop

##################################

echo "FUENTES"
mkdir -p $HOME/.fonts/|| echo "Ya esta creado"
cp -r data/ttf/* $HOME/.fonts/

##################################



echo "CUPS"
echo "FTP"
echo "Accesos directos barra:"
echo "      Firefox"
echo "      Apagar"
echo "Salt"


## Portafirmas (Salva)


