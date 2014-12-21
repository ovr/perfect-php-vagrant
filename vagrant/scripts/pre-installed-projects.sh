#!/usr/bin/env bash

if [ ! -d "/var/www/projects/ovr" ]; then
    mkdir /var/www/projects/ovr
fi

if [ ! -d "/var/www/projects/ovr/angular-skeleton" ]; then
    git clone https://github.com/ovr/angular-skeleton.git ./var/www/projects/ovr/angular-skeleton
fi
