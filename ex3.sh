#!/bin/bash
#questao 3
echo ""
echo "Questão 3"
echo ""
echo "Escreva um script que receba como parâmetro o caminho de um diretório e liste seus arquivos e diretórios um a um .Se for diretório (dir) ao lado do diretório."
echo ""

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
