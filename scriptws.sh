#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /rh

echo "Criando grupos de usuários..."

grupoadd GROUP_ADM
grupoadd GROUP_VENDAS
gruopadd GROUP_RH

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_ADM

useradd fernando -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_VENDAS
useradd mielo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_VENDAS
useradd tokunaga -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_VENDAS

useradd paulo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_RH
useradd heloisa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_RH
useradd mario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GROUP_RH

echo "Especificando permissões dos diretórios..."

chown root:GROUP_ADM /adm
chown root:GROUP_VENDAS /vendas
chown root:GROUP_RH /rh

chmod 770 /adm
chmod 770 /vendas
chmod 770 /rh
chmod 777 /publico

echo "Fim.........."
