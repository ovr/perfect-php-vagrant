#!/usr/bin/env bash

echo "Installing NodeJS..."

sudo apt-get install -y nodejs npm
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "Installing Gulp and Bower for global env..."

sudo npm -g -q install bower
sudo npm -g -q install gulp
sudo npm -g install grunt-cli
