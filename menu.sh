#!/bin/bash
#modificando o menu
#menu

echo "qual questao voce quer testar?"
read opcao
case $opcao in 
   1) echo "1"
   bash q1.sh
   ;;
   2) echo "2"
   bash q2.sh
   ;;
   3) echo "3"
   bash q3.sh
   ;;
   4) echo "4"
   bash q4.sh
   ;;
   5) echo "5"
   bash q5.sh
   ;;
   6) echo "6"
   bash q6.sh
   ;;
   7) echo "7"
   bash q7.sh
   ;;
   8) echo "8"
   bash q8.sh
   ;;
   9) echo "9"
   bash q9.sh
   ;;
   10) echo "10"
   bash q10.sh
   ;;
   11) echo "11"
   bash q11.sh
   ;;
   12) echo "12"
   bash q12.sh
   ;;
   13) echo "13"
   bash q13.sh
   ;;
esac
