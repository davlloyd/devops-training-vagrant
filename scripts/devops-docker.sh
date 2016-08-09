#!/usr/bin/env bash


# Added this function to make the individual actions prompts readable
. /vagrant/scripts/color.sh


logger "blue" "Installing Docker"
# Install Docker prereqs
sudo apt-get -y install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get -y install linux-image-extra-$(uname -r)

# Add docker repo to sources
sudo echo deb https://apt.dockerproject.org/repo ubuntu-trusty main >/etc/apt/sources.list.d/docker.list
sudo apt-get -y update

# Install docker
sudo apt-get -y install docker-engine

# Get the service running and configured
sudo groupadd docker
sudo usermod -aG docker ubuntu vagrant
sudo service docker start

# Docker machine installation
sudo su
curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine

