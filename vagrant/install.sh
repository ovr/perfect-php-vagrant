#!/usr/bin/env bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

sudo apt-get install -y git

SCRIPTS_PATH=/vagrant/vagrant/scripts

${SCRIPTS_PATH}/nginx.sh
${SCRIPTS_PATH}/php.sh
${SCRIPTS_PATH}/zephir.sh
${SCRIPTS_PATH}/phalcon.sh
