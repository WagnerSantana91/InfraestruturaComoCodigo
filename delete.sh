#!/bin/bash

echo "Iniciando remoção de usuários, grupos e diretórios..."

# Remover usuários (com home)
userdel -rf carlos
userdel -rf maria
userdel -rf joao

userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto

userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

echo "Usuários removidos!"
echo "###############################################################################################"

# Remover grupos
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Grupos removidos!"
echo "###############################################################################################"

# Remover diretórios (caso ainda existam)
rm -rf /publico /adm /ven /sec

echo "Diretórios removidos!"
echo "###############################################################################################"

echo "Finalizado!"
