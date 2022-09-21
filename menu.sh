#!/bin/bash
menu

echo "Digite o numero da questão que deseja ver"
read questao

case $questao in
1) echo "Exercício 1 Elaborar um script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações:
 - O maior dos números recebidos;
 - O somatório dos números recebidos. " ;;
2) echo "dois" ;;
3) echo "tres" ;;
4) echo "quatro" ;;
5) echo "cinco" ;;
6) echo "seis" ;;
7) echo "sete" ;;
8) echo "oito" ;;
9) echo "nove" ;;
10) echo "dez" ;;
*) echo "Opcao Invalida!" ;;
esac
