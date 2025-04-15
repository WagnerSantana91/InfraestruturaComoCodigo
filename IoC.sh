#!/bin/bash

echo "Script de criação de estrutura de usuário, diretório e premissões !"

cd /
mkdir publico
mkdir adm
mkdir ven
mkdir sec

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Diretórios criados !"
echo "###############################################################################################"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Grupos Criados!"
echo "###############################################################################################"

#Criação de usuarios para o grupo GRP_ADM
useradd carlos -m -c "Carlos Silva" -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd maria -m -c "Maria Santos" -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)
useradd joao -m -c "João Carlos" -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 Senha123)

#Criação de usuarios para o grupo GRP_VEN
useradd debora -m -c "Devora Oliveira" -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd sebastiana -m -c "Sebastiana Ferreira" -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)
useradd roberto -m -c "Roberta Feire" -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 Senha123)

#Criação de usuarios para o grupo GRP_SEC
useradd josefina -m -c "Josefina Santos" -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd amanda -m -c "Amanda Bonfim" -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)
useradd rogerio -m -c "Rogerio Cerqueira" -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 Senha123)

chown root /home/carlos
chown root /home/maria
chown root /home/joao
chown root /home/debora
chown root /home/sebastiana
chown root /home/roberto
chown root /home/josefina
chown root /home/amanda
chown root /home/rogerio

echo "Usuário criado"
 
echo "Finalizando!!"

