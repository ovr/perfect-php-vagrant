#!/usr/bin/env bash

echo "Installing NodeJS..."

sudo apt-get install -y nodejs npm
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "Installing Gulp and Bower for global env..."

sudo npm -g install bower > /dev/null
sudo npm -g install gulp > /dev/null
sudo npm -g install grunt-cli > /dev/null
