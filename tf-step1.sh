#!/bin/bash

# install pip
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get -y install python-pip

# nvidia driver
sudo ubuntu-drivers autoinstall
sudo reboot
