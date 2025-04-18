#!/bin/bash


#Atualizar servidor.

echo "Atualizando o servidor!!"
apt update -y && apt upgrade -y


#Instalando o Apache
echo "Instalando o Apache!!"
apt install apache2 -y

#Instalando o UNZIP

echo "Instalando o Unzip!!"
apt install unzip -y

#Baixando aplicação na pasta /tmp

echo "Indo para pasta /tmp"
cd /tmp

echo "Baixando arquivo Git"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando"
unzip main.zip

echo "Copiando arquivos para pasta WWW"
cd /linux-site-dio-main/
cp -r linux-site-dio-main/* /var/www/html/

