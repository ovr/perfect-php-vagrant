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

echo extension=phalcon.so > /etc/php5/cli/conf.d/30-phalcon.ini
echo extension=phalcon.so > /etc/php5/fpm/conf.d/30-phalcon.ini
