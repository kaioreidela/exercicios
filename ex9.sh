
echo "insira uma palavra a ser ordenada"
res=""
read palavra
while [ $palavra != "sair" ]
do 
 res= $res $palavra
 read palavra
done
echo "$res" | fmt -1 | sort
