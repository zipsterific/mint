#!/bin/bash
set -e
##################################################################################################################
# Written for Linux Mint 18.2
# Author 	: 	Al Ebbert
##################################################################################################################
##################################################################################################################
#
# INSTALL VAGRANT
#
##################################################################################################################
##################################################################################################################

# Vagrant

wget https://releases.hashicorp.com/vagrant/2.2.3/vagrant_2.2.3_x86_64.deb -O /tmp/vagrant.deb
# wget https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.deb -O /tmp/vagrant.deb
dpkg -i /tmp/vagrant.deb
rm /tmp/vagrant.deb
