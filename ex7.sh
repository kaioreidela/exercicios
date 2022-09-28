#!/bin/bash
#questao 7
questao ()
{
v=($@)
function checar_data {
  # checa se a data é válida
  # entrada: <data>
  # saida: 1 se válida, 0 se inválida
  re='^[0-9]{4}/[0-9]{2}/[0-9]{2}$'

  if ! [[ $1 =~ $re ]]; then
    $(zenity --error --text"data inválida")
    exit
  fi
}

function checar_dias {
    # checa se os dias da semana estão no intervalo [0,6]
    # e estão separados por vírgula
    # entrada: <dias da semana>
    # exemplo: 1,3,5
    # saida: 1 se válido, 0 se inválido

    re='^[0-6](,[0-6])*$'
    if ! [[ $1 =~ $re ]]; then
        zenity --error --text "dias inválidos"
        exit
    fi
}

function checar_intervalo {
    # checa se a data inicial é menor que a data final
    # entrada: <data inicial> <data final>
    # saida: 1 se válida, 0 se inválida
    if [ $1 -gt $2 ]; then
        zenity --error --text "data inicial maior que data final"
        exit
    fi
}

data_inicial=$(zenity --entry --text "Data inicial (Padrão americano)")
data_final=$(zenity --entry --text "Data final (Padrão americano)")
dias=$(zenity --entry --text "dias")

checar_data $data_inicial
checar_data $data_final
checar_dias $dias

data_inicial=$(date -d "$data_inicial" +%s) # converte para segundos
data_final=$(date -d "$data_final" +%s) # converte para segundos

checar_intervalo $data_inicial $data_final

for ((i=$data_inicial; i<=$data_final; i+=86400)); do # incrementa em 1 dia (86400 segundos)
    data=$(date -d @$i +%d/%m/%Y) # converte para data
    dias_semana=$(date -d @$i +%w) # converte para dia da semana
    if [[ $dias =~ $dias_semana ]]; then # se o dia da semana está no intervalo
v+=" "	  
v+=$data    
	
    fi
done
v=$(echo ${v[@]} | tr [:space:] '\n') 
zenity --list \
    --title="Trabalho" \
    --column="Datas disponiveis" \
    --text "" --width=100 --height=500 \
    "${v[@]}"  
}

clear

echo ""
echo "Questão 7"
echo ""
echo "Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que serão utilizados o laboratório 06.
 Essas datas baseiam-se nos dias da semana em que são ministradas as aulas.
 Como nossa disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível.
 Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação.
 Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão ministradas nossas aulas."
echo ""

n1=0
while [ $n1 -eq 0 ]
do
echo " essa e a questao que vc deseja?[y/n]"
echo ""
read opcao1
clear
   
   if [ $opcao1 = "n" ]
      then
         n1=1
   
   elif [ $opcao1 = "y" ]
      then
         n1=2
   else 
      echo "                    erro" 
   fi
done

while [ $n1 -eq 0 ] || [ $n1 -eq 2 ]
do
   if [ $n1 = 2 ]
   then 
   questao
   fi  

   echo " quer refazer a questao? [y/n]"
   read opcao1
   clear

   if [ $opcao1 = "n" ]
      then
         n1=1
   
   elif [ $opcao1 = "y" ]
      then
         n1=2
   else 
      echo "                    erro" 
         n1=0
   fi 
done
