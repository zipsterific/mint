#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -

sudo apt-get install -y python-pip     #python 2
sudo apt-get install -y python3-pip    #python 3
sudo -H /usr/bin/python -m pip install pylint
sudo -H pip install --upgrade pip 
sudo -H pip install setuptools

sudo add apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
