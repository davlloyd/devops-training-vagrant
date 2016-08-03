#!/usr/bin/env bash


# Added this function to make the individual actions prompts readable
. /vagrant/scripts/color.sh


logger "yellow" "*** Install RexRay"
curl -sSL https://dl.bintray.com/emccode/rexray/install | sh -
sudo cp /vagrant/config/rexray/rexray.config /etc/rexray/config.yml
sudo rexray start