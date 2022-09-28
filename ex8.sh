#!/bin/bash
#questao 8
questao ()
{
for file in $(echo *); do
  if [[ -d $file || $file = $(basename $BASH_SOURCE) ]]; then
    continue 
  fi

  # pega a primeira palavra da primeira linha do arquivo
  first_word=$(head -n1 $file | cut -d ' ' -f 1)

  # se o arquivo for vazio, ele não é renomeado
  [ -z $first_word ] && echo pulando $file && continue

  # se ja existir um arquivo ou um diretorio com o nome da variavel, entao adicionamos um numero no final do arquivo
  if [[ -f $first_word || -d $first_word ]] ; then
    first_word="${first_word}_$(($(ls | grep $first_word | wc -l)+1))"
  fi
  
  echo movendo $file para $first_word
  mv $file $first_word
done
}

clear

echo ""
echo "Questão 8"
echo ""
echo " Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondente à primeira palavra encontrada no conteúdo do próprio arquivo."
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
