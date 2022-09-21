arquivo=$1
if [! -f $arquivo ]
then
 echo " o arquivo $arquivo nao existe"
exit 1
fi
tamanho=$(du -b $arquivo | cut -f1)
clear
echo "o arquivo $arquivo existe e tem $tamanho bytes"
