#!/bin/bash

# run a full system update
sudo apt-get update -y
sudo apt-get upgrade -y

# instream software installs

sudo apt-get install -y curl catfish clementine curl dconf-cli dconf-editor dropbox evolution focuswriter geany geary gimp gpick
sudo apt-get install -y glances gparted grsync hardinfo inkscape meld
sudo apt-get install -y openshot pinta plank ppa-purge radiotray screenruler screenfetch scrot shutter slurm synapse
sudo apt-get install -y thunar vlc vnstat screenfetch python-setuptools

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

# now for the eye candy...
# sudo mkdir /home/alan/erikdubois
# sudo git clone https://github.com/erikdubois/Ultimate-Linux-Mint-18.2-Cinnamon.git /home/alan/erikdubois
# sudo /bin/sh /home/alan/erikdubois/1-install-core-software-v2.sh
# cd  /home/alan/erikdubois/
# sudo /bin/sh 2-install-extra-software-v1.sh
# sudo /bin/sh 3-install-themes-icons-cursors-conky-plank-v2.sh
# sudo /bin/sh 4-install-distro-specific-software.sh

echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"
