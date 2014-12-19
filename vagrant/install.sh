#!/usr/bin/env bash

echo "nameserver 8.8.8.8" >> /etc/resolvconf/resolv.conf.d/head
echo "nameserver 8.8.4.4" >> /etc/resolvconf/resolv.conf.d/head
sudo service resolvconf restart

sudo apt-get -y update

sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

sudo apt-get install -y git unzip htop
