#!/bin/bash

echo "Dirs"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Groups"

groupadd G_ADM
groupadd G_VEN
groupadd G_SEC

echo "Users"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G G_SEC

echo "Permissions"

chown root:G_ADM /adm
chown root:G_VEN /ven
chown root:G_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluded"
