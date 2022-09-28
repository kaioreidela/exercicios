#!/bin/bash

questao ()
{
echo -e " rfrf"
read m
if [ $m -eq 1 ] 
then
 df -h
elif [ $m -eq 2 ]
then 
 who 
elif [ $m -eq 3 ]
then 
 date
elif [ $m -eq 4 ]
then
 echo "saiu..."
else 
echo "opção nao encontrada"
fi 
}
echo ""
echo "Questão 6"
echo ""

echo " Elaborar um script que apresente ao usuário um menu com as seguintes opções:
 1 - Exibir status da utilização das partições do sistema (df -h) 2 - Exibir relação de usuário logados (who) 3 - Exibir data/hora (date) "
echo ""

n1=0
while [ $n1 -eq 0 ]
do
echo " essa e a questao que vc deseja [y/n]?"
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

   echo " quer refazer a questao [y/n]?"
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
