#!/usr/bin/env bash

echo "Installing Zephir..."

sudo apt-get install -y git gcc make re2c php5 php5-dev libpcre3-dev

cd ~/build

git clone https://github.com/phalcon/zephir
cd zephir
./install-json
./install -c
