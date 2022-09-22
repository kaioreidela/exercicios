#!/bin/bash
#questao 4
echo ""
echo " Questão 4"
echo ""

echo "Elaborar um script que receba um número como parâmetro e imprima todos os números pares de 0 até o número informado como parâmetro."
echo ""

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
