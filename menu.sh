#!/bin/bash
#menu
menu ()
   {
      n=0
      while [ $n -eq 0 ]
      do

         echo "qual questao voce quer testar [1 - 13]?"
         read opcao
         clear
   
         if [ $opcao -lt 14 ] && [ $opcao -gt 0 ]
         then
               n=1
         else 
            echo "     erro"
         fi
      done
      
      case $opcao in 
         1)
         bash q1.sh ;;
         2)
         bash q2.sh ;;
         3)
         bash q3.sh ;;
         4)
         bash q4.sh ;;
         5)
         bash q5.sh ;;
         6) echo "6"
         #bash q6.sh
         ;;
         7) echo "7"
         #bash q7.sh
         ;;
         8) echo "8"
         #bash q8.sh
         ;;
         9) echo "9"
         #bash q9.sh
         ;;
         10) echo "10"
         #bash q10.sh
         ;;
         11) echo "11"
         #bash q11.sh
         ;;
         12) echo "12"
         #bash q12.sh
         ;;
         13) echo "13"
         #bash q13.sh
         ;;
      esac

   }
   
clear
n1=2
while [ $n1 -eq 0 ]  || [ $n1 -eq 2 ]
do 
     
    if [ $n1 = 2 ]
      then
         menu
      fi
   
n1=0
echo " quer resolver outra questao [y/n]?"
read opcao1
clear
   
   if [ $opcao1 = "n" ]
      then
         n1=1
   
   elif [ $opcao1 = "y" ]
      then
      echo ""
      n1=2
   else 
      echo "                    erro" 
      n1=0
   fi
done 

