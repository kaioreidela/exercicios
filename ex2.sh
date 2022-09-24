#!/bin/bash
#questa 2

questao ()
{
echo "digite o nome do usuário "
read nome
echo ""

if [[ -n $(cat /etc/passwd | grep -w -io $nome) ]]
then
 echo " o usuario $nome existe "
 else 
  echo "o usuario $nome nao existe "
 fi
}

clear

echo ""
echo "Questão 2"
echo ""
echo "Elaborar um script que solicite a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minśculas )."
echo ""

n1=0
while [ $n1 -eq 0 ]
do
echo " essa e a questao que vc deseja?[y/n]"
echo ""
read opcao1
clear
   
   if [ $opcao1 = "n" ]
      then
         n1=1
   
   elif [ $opcao1 = "y" ]
      then
         n1=2
   else 
      echo "                    erro" 
   fi
done

while [ $n1 -eq 0 ] || [ $n1 -eq 2 ]
do
   if [ $n1 = 2 ]
   then 
   questao
   fi  

   echo " quer refazer a questao? [y/n]"
   read opcao1
   clear

   if [ $opcao1 = "n" ]
      then
         n1=1
   
   elif [ $opcao1 = "y" ]
      then
         n1=2
   else 
      echo "                    erro" 
         n1=0
   fi 
done
