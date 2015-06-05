#!/usr/bin/env bash

echo "Installing Phalcon 2..."

cd ~/build
wget -o /dev/null -O phalcon.zip https://github.com/phalcon/cphalcon/archive/master.zip
unzip phalcon.zip -d cphalcon > /dev/null
rm phalcon.zip
cd cphalcon/cphalcon-master
zephir install

#git clone -b 2.0.0 https://github.com/phalcon/cphalcon.git
#cd cphalcon
#zephir install

sudo echo extension=phalcon.so > /etc/php5/mods-available/phalcon.ini
sudo php5enmod phalcon
