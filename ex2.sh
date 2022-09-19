
echo "informe o nome do usario:"
read usuario
if [[ $(cat/etc/passwd | grep -w -io $usuario) ]]
then 
 echo "o usuario $usuario exite"
else
 echo "o usuario $usuario nao exite"
fi
