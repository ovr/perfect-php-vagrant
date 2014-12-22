#!/usr/bin/env bash

echo "Installing MySQL..."

PASSWORD=''

sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password PASS"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password PASS"

sudo apt-get install -y mysql-server mysql-client
sudo apt-get install -y php5-mysql

mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('');"
sudo service mysql restart

mysql -uroot -e 'CREATE DATABASE `phalcon-module-skeleton` CHARACTER SET `utf8` COLLATE `utf8_unicode_ci`;'
mysql -uroot phalcon-module-skeleton < /var/www/projects/ovr/phalcon-module-skeleton/scheme/dump.sql