#!/bin/bash

echo "Atualizações do servidor e instalando pacotes....."
apt-get update
apt-get upgrade -y
apt-gte install apache2 -y
apt-get install unzip -y

echo "Download  e copiando arquivos"

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio-main/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Script finalizado"

echo "Tudo bonitinho e  cheirozin..."
