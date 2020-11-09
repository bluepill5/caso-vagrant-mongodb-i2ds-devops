#!/usr/bin/env bash

# sudo apt install virtualbox
# sudo apt update
# curl -O https://release.hashicorp.com/vagrant/2.2.10_x86_64.deb
# sudo apt install ./vagrant_2.2.10_x86_64.deb
# sudo apt install snapd
# sudo snap install ngrok
# vagrant plugin install vgrant-share

export DEBIAN_FRONTED=noninteractive
sudo rm -v /etc/apt.conf.d/70debconf

echo "deb https://rundeck.bintray.com/rundeck-deb /" | sudo tee -a /etc/apt/sources.list.d/rundeck.list
curl 'https://bintray.com/user/downloadSubjectPublicKey?username=bintray' | sudo apt-key add -
sudo apt-get update
sudo apt-get install rundeck -y

sudo service rundeckd start
