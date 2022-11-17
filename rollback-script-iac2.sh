#!/bin/bash

echo "Removendo apache2 ..."
rm -rf /var/www/html/*
apt-get purge apache2 -y -q

echo "Removendo unzip ..."
apt-get purge unzip -y -q

apt-get autoremove -y -q

echo "Script finalizado"
