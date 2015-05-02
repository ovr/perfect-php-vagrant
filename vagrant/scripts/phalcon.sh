#!/usr/bin/env bash

echo "Installing Phalcon 2..."

cd ~/build
wget -o /dev/null https://github.com/phalcon/cphalcon/archive/2.0.0.zip
unzip 2.0.0.zip -d cphalcon > /dev/null
rm 2.0.0.zip
cd cphalcon/cphalcon-2.0.0
zephir install

#git clone -b 2.0.0 https://github.com/phalcon/cphalcon.git
#cd cphalcon
#zephir install

sudo echo extension=phalcon.so > /etc/php5/mods-available/phalcon.ini
sudo php5enmod phalcon
