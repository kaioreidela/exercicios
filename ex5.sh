#!/bin/bash
#questa 5

questao ()
{
   echo "digite o nome do arquivo "
   read arquivo
   echo ""

   if [ ! -e $arquivo ]
   then
      echo " o arquivo $arquivo nao existe"
 
   else 
      tamanho=$(du -b $arquivo | cut -f1)
      echo "o arquivo $arquivo existe e tem $tamanho bytes"
   fi
}

clear
echo ""
echo "Questão 5"
echo ""

echo "Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprima o seu tamanho em bytes."
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
