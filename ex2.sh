#!/bin/bash
#questa 2
echo ""
echo "Questão 2"
echo ""
echo "Elaborar um script que solicite a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minśculas )."
echo ""

echo "digite o nome do usuário "
read nome
echo ""

if [[ -n $(cat /etc/passwd | grep -w -io $nome) ]]
then
 echo " o usuario $nome existe "
 else 
  echo "o usuario $nome nao existe "
 fi