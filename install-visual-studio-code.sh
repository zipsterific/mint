#!/bin/bash
set -e
##################################################################################################################
# Written for Linux Mint 18.2
# Author 	: 	Al Ebbert
##################################################################################################################
##################################################################################################################
#
# INSTALL VIRTUAL STUDIO CODE
#
##################################################################################################################
##################################################################################################################

# Virtual Studio Code
wget https://az764295.vo.msecnd.net/stable/dcee2202709a4f223185514b9275aa4229841aa7/code_1.18.0-1510145176_amd64.deb -O /tmp/visualstudio.deb
dpkg -i /tmp/visualstudio.deb
rm /tmp/visualstudio.deb