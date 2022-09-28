#!/bin/bash
#questao 4

questao ()
{
   echo " digote um número:"
   read n1
   echo ""

   echo "o numero digitado é $n1"
   echo ""

   n=0
   while [ $n -le $n1 ]
   do
      echo "$n"
      n=$((n+2))
   done
}

clear
echo ""
echo " Questão 4"
echo ""

echo "Elaborar um script que receba um número como parâmetro e imprima todos os números pares de 0 até o número informado como parâmetro."
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
