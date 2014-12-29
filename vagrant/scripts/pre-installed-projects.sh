#!/usr/bin/env bash

if [ ! -d "/var/www/projects/ovr" ]; then
    mkdir /var/www/projects/ovr
fi

if [ ! -d "/var/www/projects/ovr/angular-skeleton" ]; then
    git clone https://github.com/ovr/angular-skeleton.git /var/www/projects/ovr/angular-skeleton
fi

if [ ! -d "/var/www/projects/ovr/phalcon-module-skeleton" ]; then
    git clone https://github.com/ovr/phalcon-module-skeleton.git /var/www/projects/ovr/phalcon-module-skeleton
    cd /var/www/projects/ovr/phalcon-module-skeleton
    cp ./application/config/parameters.php.dist ./application/config/parameters.php
    composer install
fi
