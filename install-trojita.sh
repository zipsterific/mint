#!/bin/bash
set -e
##################################################################################################################
# Written for Linux Mint 18.2
# Author 	: 	Al Ebbert
##################################################################################################################
##################################################################################################################
#
# INSTALL TROJITA 
#
##################################################################################################################
##################################################################################################################

# Trojita

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/jkt-gentoo:/trojita/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/trojita.list"
wget http://download.opensuse.org/repositories/home:jkt-gentoo:trojita/xUbuntu_16.04/Release.key -O /tmp/Release.key
sudo apt-key add - < /tmp/Release.key
sudo apt update
sudo apt install trojita