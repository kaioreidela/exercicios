#!/bin/bash
#questao 1

questao ()
{
   echo " digite o primeiro numero"
   read n1
   echo "digite o segundo numero"
   read n2
   clear
   echo "os numeros digitados sao $n1 e $n2 "
   if [ $n1 -gt $n2 ]
   then
      echo "o maior e $n1 "
   else 
      echo " o maior e $n2 "
   fi

   soma=$(($n1+$n2))
   echo "a soma dos dois e $soma"
}

echo ""
echo "questao 1"
echo ""

echo "Elaborar um ecript que receba dois números como parâmetro e como resultado da sua execução exiba as segintes informações:
- O maior dos dois númereros recebidos;
- O somatório dos números recebidos."
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

