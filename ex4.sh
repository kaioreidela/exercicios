#!/bin/bash
#questao 4
echo ""
echo " Quest�o 4"
echo ""

echo "Elaborar um script que receba um n�mero como par�metro e imprima todos os n�meros pares de 0 at� o n�mero informado como par�metro."
echo ""

echo " digote um n�mero:"
read n1
echo ""

echo "o numero digitado � $n1"
echo ""

n=0
while [ $n -le $n1 ]
do
 echo "$n"
 n=$((n+2))
 done
