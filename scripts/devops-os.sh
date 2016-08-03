#!/usr/bin/env bash


# Added this function to make the individual actions prompts readable
. /vagrant/scripts/color.sh


logger "yellow" "*** Custom OS settings"
sudo apt-get -y update

# Install core tools
sudo apt-get -y install openjdk-7-jre 
sudo apt-get -y install curl
sudo apt-get -y install genisoimage

