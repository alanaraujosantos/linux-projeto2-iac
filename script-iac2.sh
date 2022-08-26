#!bin/bash

echo "Atualziando máquina"
apt-get update
apt-get upgrade -y

echo "Instalando Apache e Unzip"

apt-get install apache2 -y
apt-get install unzip -y

echo "Download dos arquivos"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


