#!/bin/bash

echo 'atualizando o servidor...'
apt-get update
apt-get upgrade -y
echo 'instalando apache...'
apt-get install apache2 -y
echo 'instalando unzip...'
apt-get install unzip -y
cd /tmp
echo 'baixando arquivo git...'
wget https://github.com/WarnnerSinotti/linuxrepo/archive/refs/heads/main.zip
unzip main.zip
cd linuxrepo-main
echo 'copiando para arquivo html...'
cp -R * /var/www/html/
echo 'fim...'