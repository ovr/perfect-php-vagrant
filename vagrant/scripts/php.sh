#!/usr/bin/env bash

echo "Use ondrej/php5-5.6 PPA for latest PHP..."

sudo add-apt-repository ppa:ondrej/php5-5.6
sudo apt-get update

echo "Installing PHP..."

sudo apt-get -y install php5-cli php5-dev php5-fpm php5-curl php5-memcache

sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
