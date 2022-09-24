#!/bin/bash
#questao 3

questao ()
{
   echo "digite um diretorio"
   read dir

   if [ -d "$dir" ]
   then
      for d in $(ls $dir)
      do
         echo " $d $([ -d $dir/$d ] && echo "(dir)")"
      done 
   else 
      echo "nao existe "
   fi
}

clear
echo ""
echo "Questão 3"
echo ""
echo "Escreva um script que receba como parâmetro o caminho de um diretório e liste seus arquivos e diretórios um a um .Se for diretório (dir) ao lado do diretório."
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
