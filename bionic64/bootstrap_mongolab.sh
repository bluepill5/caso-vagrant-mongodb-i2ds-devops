#!/usr/bin/env bash

# python
sudo apt-get update
sudo apt-get install mc -y 
sudo apt-get -y install python3-pip
sudo apt-get -y install python3-dev
sudo -H pip3 install --upgrade pip
sudo -H pip3 install jupyter
sudo -H pip3 install jupyterlab
sudo -H pip3 install pymongo

# mongodb
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# database
sh /vagrant/download-latest-JHU.sh
sh /vagrant/mongoimport-everything.sh
python3 /vagrant/query_covid19.py


