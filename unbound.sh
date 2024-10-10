#!/bin/bash

#   Script header:
echo "Installing unbound."
#   Install unbound:
sudo nala install -y unbound
#   Copy the config file to the unbound service directory:
sudo cp ./pi-hole.conf /etc/unbound/unbound.conf.d/pi-hole.conf
