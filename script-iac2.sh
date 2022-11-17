#!/bin/bash
FILE_NAME="site.zip"

echo "Atualizando servidor ..."
apt-get update -y -q
apt-get upgrade -y -q

echo "Instalando apache2 ..."
apt-get install apache2 -y -q

echo "Instalando unzip ..."
apt-get install unzip -y -q

echo "Baixando aplicação para o diretório /tmp ..."
cd /tmp
wget -O $FILE_NAME -q https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando arquivos da aplicação para o diretório do apache2 ..."
unzip -o -q $FILE_NAME
cd linux-site-dio-main
cp -f -R -p * /var/www/html

echo "Script finalizado"
