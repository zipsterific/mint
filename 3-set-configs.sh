#!/bin/bash

# install iDrive scripts

idrive=/home/alan/idrive

mkdir $idrive
wget https://www.idrivedownloads.com/downloads/linux/download-for-linux/IDrive_for_Linux.zip -O /$idrive/idrive.zip
unzip $idrive/idrive.zip
chmod a+x $idrive/IDrive_for_Linux/scripts/*.pl
