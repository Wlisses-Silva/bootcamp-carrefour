#!/bin/bash

echo "Criando Diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os Grupos de Usuáios"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os Usuários e adicionaod nos respectivos grupo"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC


echo "Especificando permissões dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 700 /sec
chmod 777 /publico

echo "Finalizando o primeiro script para criação dos diretórios, grupos, usuários e permissões nos diretórios"