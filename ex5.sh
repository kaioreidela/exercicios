#!/bin/bash
#questa 5

echo ""
echo "Questão 5"
echo ""

echo "Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprima o seu tamanho em bytes."
echo ""

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
