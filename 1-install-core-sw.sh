#!/bin/bash

# run a full system update
sudo apt-get update -y
sudo apt-get upgrade -y

# instream software installs

sudo apt-get install -y catfish clementine curl dconf-cli dconf-editor dropbox evolution focuswriter geany geary gimp gpick
sudo apt-get install -y glances gparted grsync hardinfo inkscape meld
sudo apt-get install -y openshot pinta plank ppa-purge radiotray screenruler screenfetch scrot shutter slurm synapse
sudo apt-get install -y thunar vlc vnstat

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

# install brave
curl https://s3-us-west-2.amazonaws.com/brave-apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://s3-us-west-2.amazonaws.com/brave-apt xenial main" | sudo tee -a /etc/apt/sources.list.d/brave-xenial.list
sudo apt update
sudo apt install -y brave

# some of the unusual stuff
sudo apsudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim
sudo apt-get install -y screenfetch

# now for the eye candy...
sudo mkdir /home/alan/erikdubois
sudo git clone https://github.com/erikdubois/Ultimate-Linux-Mint-18.2-Cinnamon.git /home/alan/erikdubois
sudo /bin/sh /home/alan/erikdubois/1-install-core-software-v2.sh
cd  /home/alan/erikdubois/
sudo /bin/sh 2-install-extra-software-v1.sh
sudo /bin/sh 3-install-themes-icons-cursors-conky-plank-v2.sh
sudo /bin/sh 4-install-distro-specific-software.sh
sudo /bin/sh install-zsh-v1.sh
sudo chsh alan -s /bin/zsh

echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"