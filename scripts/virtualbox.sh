#!/bin/bash/

sudo apt update -y
sudo apt upgrade -y

sudo wget https://download.virtualbox.org/virtualbox/6.1.26/virtualbox-6.1_6.1.26-145957~Ubuntu~eoan_amd64.deb

sudo apt install ./virtualbox-6.1_6.1.26-145957~Ubuntu~eoan_amd64.deb -y

sudo rm virtualbox-6.1_6.1.26-145957~Ubuntu~eoan_amd64.deb

sudo wget https://download.virtualbox.org/virtualbox/6.1.26/VirtualBoxSDK-6.1.26-145957.zip
