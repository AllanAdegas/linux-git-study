#!/bin/bash

echo "Dirs"

rm -rf /publico
rm -rf /adm
rm -rf /ven
rm -rf /sec

echo "Groups"

groupdel G_ADM
groupdel G_VEN
groupdel G_SEC

echo "Users"

userdel -rf carlos 
userdel -rf maria  
userdel -rf joao 
userdel -rf debora 
userdel -rf sebastiao 
userdel -rf roberto 

userdel -rf josefina 
userdel -rf amanda 
userdel -rf rogerio 

echo "Concluded"
