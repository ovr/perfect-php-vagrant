#!/usr/bin/env bash

echo "Installing Lynx..."

cd /tmp
git clone -b 2.0.0 https://github.com/lynx/lynx.git
cd lynx
zephir install

echo extension=lynx.so > /etc/php5/cli/conf.d/30-lynx.ini
echo extension=lynx.so > /etc/php5/fpm/conf.d/30-lynx.ini
