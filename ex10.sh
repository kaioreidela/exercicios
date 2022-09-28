#!/bin/bash
#questao10

questao ()
{
v=("$@")
while [ "$p" != 'sair' ]
do
#recebe uma palavra
p=$(zenity --entry --text "Digite alguma palavra")

p=$(zenity --entry --text "Uma palavra")

if [ "$p" != 'sair' ]
then
v+="$p"
v+=" "
nome="${v[@]}"
#ordena em ordem alfabetica
nome=$(tr " " "\\n" <<< "$nome"|sort|paste -sd ' ')
#troca espaços por \n
nome=$(echo $nome | tr [:space:] '\n')  
zenity --list \
    --title="Trabalho" \
    --column="Palavras em ordem alfabetica" \
    --text "" \
    "$nome"
fi

done
}

echo ""
echo "questao 10"
echo ""

echo " Desenvolva um script que receba palavras interativamente e, a cada palavra recebida, exiba, como resultado, essas palavras ordenadas. Ao ser informada a palavra "sair", o script é finalizado. ;;"
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
