#!/bin/bash
echo "Be smart -- Agregando repositorios"
#Indicadores
sudo add-apt-repository ppa:indicator-multiload/stable-daily
#VLC
sudo add-apt-repository ppa:videolan/stable-daily
#nemo
sudo add-apt-repository ppa:noobslab/mint
#pinta
sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
#Nvidia
sudo add-apt-repository ppa:ubuntu-x-swat/x-updates
#Extras restringidos
sudo add-apt-repository ppa:mc3man/trusty-media
#Variety
sudo add-apt-repository ppa:peterlevi/ppa

echo "/-----------------------------------/"
echo " Actualizando las fuentes "
sudo apt-get update
echo "/-----------------------------------/"

echo "Instalando rar, zip, etc."
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller
echo "/-----------------------------------/"

echo "Instalando Prime y drivers envidia"
sudo apt-get install -y Prime
sudo apt-get install -y nvidia-current
echo "/-----------------------------------/"

echo "Agregados extras restringidos"
sudo apt-get install -y ubuntu-restricted-extras
echo "/-----------------------------------/"

echo "habilitando h264 para f|irefox"
echo "/-----------------------------------/"

sudo apt-get update
sudo apt-get install -y gstreamer0.10-ffmpeg
echo "/-----------------------------------/"

echo "Instalando indicadores"
sudo apt-get install -y indicator-multiload
echo "/-----------------------------------/"

echo "Deshabilitando sugerencias de internet"
wget -q -O - https://fixubuntu.com/fixubuntu.sh | bash
echo "/-----------------------------------/"

echo "Instalando Winrar y descrompresores de archivos"
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller
echo "/-----------------------------------/"

echo "Instalando QBittorrent"
sudo apt-get install -y qbittorrent
echo "/-----------------------------------/"

echo "Instalando VLC"
sudo apt-get install -y vlc
echo "/-----------------------------------/"

echo "Instalando Nemo"
sudo apt-get install -y nemo
sudo apt-get install -y nemo-terminal
echo "/-----------------------------------/"

echo "Instalando Sublime Text 3"
curl http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb
sudo dpkg -i ./sublime-text_build-3065_amd64.deb
echo "/-----------------------------------/"

echo "Instalando nodejs"
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
echo "/-----------------------------------/"

echo "Instalando meteor"
curl https://install.meteor.com/ | sh
echo "/-----------------------------------/"

echo "Dejando Nemo como Administrador de archivos por defecto"
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
echo "/-----------------------------------/"

echo "--- Verificando si es Administrador por defecto"
xdg-mime query default inode/directory
echo "/-----------------------------------/"

echo "Instalando Git Cola"
sudo apt-get install git-cola -y
echo "/-----------------------------------/"

echo "Instalando Pinta Image Editor"
sudo apt-get install pinta -y
echo "/-----------------------------------/"

echo "Instalando Google Chrome"
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome-stable_current_amd64.deb
echo "/-----------------------------------/"

echo "Instalando tweak tools"
sudo apt-get install -y unity-tweak-tool gnome-tweak-tool
echo "/-----------------------------------/"

echo "Installing Steroids"
echo "My username is: `whoami`"
sudo chown -R `whoami` /usr/local/lib/node_modules
[ -e ~/.npm ] && sudo chown -R `whoami` ~/.npm
npm install steroids -g
steroids login
echo "/-----------------------------------/"

echo "Installing Variety"
sudo apt-get install -y variety
echo "/-----------------------------------/"