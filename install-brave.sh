#!/bin/bash
set -e
##################################################################################################################
# Written for Linux Mint 18.2
# Author 	: 	Al Ebbert
##################################################################################################################
##################################################################################################################
#
# INSTALL BRAVE
#
##################################################################################################################
##################################################################################################################

# Brave

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
# source /etc/os-release #don't use 'source' use . to source
. /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
sudo apt update
sudo apt install brave-browser brave-keyring
