#!/usr/bin/env bash


# Added this function to make the individual actions prompts readable
. /vagrant/scripts/color.sh


logger "yellow" "*** Install Developer tools settings"
sudo apt-get -y update

# Install python
sudo apt-get -y install python-gdbm
sudo apt-get -y install python-pip
pip install flask

# Install editors
sudo apt-get -y install vim
sudo apt-get -y install nano

# Install PCF CLI tools
sudo su
cd /usr/bin
curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx

# Install developer tools
sudo apt-get -y install git


