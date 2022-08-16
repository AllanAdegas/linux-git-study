#!/bin/bash

echo "server update..."
apt-get update 
apt-get upgrade -y
echo "OK"

echo "setting up..."
apt-get install apache2 -y
apt-get install unzip -y
echo "OK"

echo "Creating application..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Created"

echo "Check the ip"
ip a
