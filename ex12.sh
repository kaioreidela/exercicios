#!/bin/bash
#questao 12
questao ()
{
zenity --list \
    --title="Trabalho" \
    --column="Usuário Cadastrados" \
    --text "" \
    "$(cat /etc/passwd | grep -E 'home|root' | cut -d : -f 1,6 | sed 's/:/ => /')"
}

clear

echo ""
echo "Questão 12"
echo ""
echo "Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home."
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
