#!/bin/bash
#questao 1

echo ""
echo "questao 1"
echo ""

echo "Elaborar um ecript que receba dois números como parâmetro e como resultado da sua execução exiba as segintes informações:
- O maior dos dois númereros recebidos;
- O somatório dos números recebidos."
echo ""

echo " digite o primeiro numero"
read n1
echo "digite o segundo numero"
read n2
echo "os numeros digitados sao $n1 e $n2 "
if [ $n1 -gt $n2 ]
then
 echo "o maior e $n1 "
else 
 echo " o maior e $n2 "
fi

soma=$(($n1+$n2))
echo "a soma dos dois e $soma"
