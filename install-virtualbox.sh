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

apt-get install libcurl3
wget http://download.virtualbox.org/virtualbox/6.0.4/virtualbox-6.0_6.0.4-128413~Ubuntu~bionic_amd64.deb -O /tmp/virtual-box.deb
dpkg -i /tmp/virtual-box.deb
rm /tmp/virtual-box.deb
