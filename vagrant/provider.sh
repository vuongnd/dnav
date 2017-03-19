#!/usr/bin/env bash

sudo apt-get update


echo ******************
echo ******Apache******
echo ******************

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

echo ******************
echo ********Git*******
echo ******************
sudo apt-get install -y git

echo ******************
echo ********Curl******
echo ******************
sudo apt-get install -y curl

echo ******************
echo ******Nodejs******
echo ******************

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

echo ******************
echo ******rvm****
echo ******************
\curl -sSL https://get.rvm.io | bash
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.1
rvm use 2.1 --default
ruby -v

gem install sass

echo ******************
echo ******docpad******
echo ******************
npm install -g npm
npm install -g docpad@6.79

echo ******************
echo ******bower*******
echo ******************
npm install -g bower
