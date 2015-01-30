#!/usr/bin/env bash

echo "Installing PgSQL..."

PASSWORD=''

sudo apt-get install -y postgresql postgresql-contrib
sudo apt-get install -y php5-pgsql

sudo service postgresql start
sudo -u postgres psql -c "CREATE ROLE root LOGIN UNENCRYPTED PASSWORD '$PASSWORD' SUPERUSER;"
sudo service postgresql restart
