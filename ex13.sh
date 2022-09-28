#!/bin/bash
#questao 13
questao ()
{
zenity --list \
    --title="Trabalho" \
    --column="Palavras em ordem alfabetica" \
    --text "" \
    "$(cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 7 | sort | uniq -c | sort | head -n 1 | tr -s "  " | awk '{ print $2 "  => " $1 }')"
}

clear

echo ""
echo "Questão 13"
echo ""
echo "Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado por cada usuário do sistema (campo 7). Desenvolva um script que informe qual é o shell mais utilizado. "
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
