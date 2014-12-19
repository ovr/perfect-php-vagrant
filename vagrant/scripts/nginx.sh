#!/usr/bin/env bash

echo "Installing Nginx..."

sudo apt-get -y install nginx-full

sudo cp /vagrant/vagrant/etc/nginx/nginx.conf /etc/nginx/nginx.conf
sudo rm -rf /etc/nginx/sites-enabled/*
sudo cp /vagrant/vagrant/etc/nginx/sites-enabled/* /etc/nginx/sites-enabled/

sudo service nginx restart
