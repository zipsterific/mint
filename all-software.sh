#!/bin/bash

# update the system
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y python-pip     #python 2
sudo apt-get install -y python3-pip    #python 3
sudo -H /usr/bin/python -m pip install pylint
sudo -H pip install --upgrade pip 
sudo -H pip install setuptools

# software from 'normal' repositories
sudo apt-get install -y catfish clementine curl dconf-cli dconf-editor dropbox evolution focuswriter geany geary gimp gpick
sudo apt-get install -y glances gparted grsync hardinfo inkscape meld
sudo apt-get install -y openshot pinta plank ppa-purge radiotray screenruler screenfetch scrot shutter slurm synapse
sudo apt-get install -y thunar vlc vnstat

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

# some of the unusual stuff
sudo apsudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim