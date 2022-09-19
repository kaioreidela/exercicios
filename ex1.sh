# questao 1
 
if [ $1 -gt $2 ]
 then 
 echo "o maior numero é $1"
elif [ $2 -gt $1 ]
 then
 echo "o maior numero é $2"
fi
resultado=$[ $1 + $2 ]
echo "a soma dos dois numeros passados é:$resultado" 
