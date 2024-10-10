#!/bin/bash

#   Preconfiguration check in:
echo "Did you edit the config files appropriately? (y/n)"
read keepalivedInstall
if [[ $keepalivedInstall == "y" || $keepalivedInstall == "Y" ]]; then
    keepalivedInstall=true
    echo "Very well, installing keepalived now."
else
    keepalivedInstall=false
    exit 1
fi
#   Update and install keepalived:
sudo nala update && sudo nala install -y keepalived
#   Prompt for config file path:
echo "Enter the file path for the keepalived config you wish to use."
read keepalivedConfPath
#   File path confirmation prompt:
echo "Are you sure you want to copy [$keepalivedConfPath]? (Y/n)"
read sanityCheck
if [[ $sanityCheck == "y" || $sanityCheck == "Y" ]]; then
    keepalivedConfState=true
    #   Copy the config file to the keepalived service directory:
    sudo cp $keepalivedConfPath /etc/keepalived/keepalived.conf
    sudo systemctl enable keepalived
else
    keepalivedConfState=false
fi