#!/bin/bash

date

echo "Criando diretórios, por favor aguarde ... "

mkdir publico  
mkdir adm
mkdir vendas
mkdir sec 

chmod 777 publico
chmod 770 adm
chmod 770 vendas
chmod 770 sec

chgrp GRP_ADM adm
chgrp GRP_VEN vendas
chgrp GRP_SEC sec

echo "Diretórios criados. "

echo "Criando grupos, por favor aguarde ... "

groupadd GRP_ADM  
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados. "

# Tentei criar com o comando -crypt e deu erro, criando sem já esta criptografando, verifiquei com o comando: # cat /etc/shadow | grep usuário #
echo "Criando usuários, por favor aguarde ... "

useradd carlos -c "Carlos Pires" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Pontes" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_ADM 
passwd maria -e

useradd joao -c "João Silva" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_ADM 
passwd joao -e

useradd debora -c "Débora Costa" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Oliveira" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_VEN 
passwd sebastiana -e

useradd roberto -c "Roberto Zorzan" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_VEN 
passwd roberto -e

useradd josefina -c "Josefina Camargo" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_SEC 
passwd josefina -e

useradd amanda -c "Amanda Nunes" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_SEC  
passwd amanda -e

useradd rogerio -c "Rogério Amoroso" -s /bin/bash -m -p $(openssl passwd Senha2023) -G GRP_SEC  
passwd rogerio -e

echo "Usuários criados, favor alterar a senha no primeiro logon ... "