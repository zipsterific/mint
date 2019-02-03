#!/bin/bash
set -e
##################################################################################################################
# Written for Linux Mint 18.2
# Author 	: 	Al Ebbert
##################################################################################################################
##################################################################################################################
#
# INSTALL Virtualbox
#
##################################################################################################################
##################################################################################################################

# Virtualbox

apt-get -y install libcurl4 libqt5opengl5
wget http://download.virtualbox.org/virtualbox/6.0.4/virtualbox-6.0_6.0.4-128413~Ubuntu~bionic_amd64.deb -O /tmp/virtual-box.deb
dpkg -i /tmp/virtual-box.deb
rm /tmp/virtual-box.deb

# Extension Pack
wget http://download.virtualbox.org/virtualbox/6.0.4/Oracle_VM_VirtualBox_Extension_Pack-6.0.4.vbox-extpack -O /tmp \
Oracle_VM_VirtualBox_Extension_Pack-6.0.4.vbox-extpack
vboxmanage extpack install --accept-license=56be48f923303c8cababb0bb4c478284b688ed23f16d775d729b89a2e8e5f9eb \
Oracle_VM_VirtualBox_Extension_Pack-6.0.4.vbox-extpack
