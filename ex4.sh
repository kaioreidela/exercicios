echo " digite um numero:"
read numero
cont=0
while [ $cont -lt $numero ]
 do
    paridade=$(($cont%2))
    echo "$paridade"
    fi [ $paridade -eq 0 ]
        then
        echo " $cont "
    fi
    let cont=cont+1
done
