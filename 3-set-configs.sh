#!/bin/bash
set -x

# install iDrive scripts

idrive=/home/alan/idrive

if [ ! -d $idrive ]; then
    mkdir $idrive
    else
    echo "It appears the iDrive files are already installed. Aborted."
    exit 1
fi
wget https://www.idrivedownloads.com/downloads/linux/download-for-linux/IDrive_for_Linux.zip -O $idrive/idrive.zip
unzip $idrive/idrive.zip
chmod a+x $idrive/IDrive_for_Linux/scripts/*.pl