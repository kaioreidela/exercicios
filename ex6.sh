echo "###########  MENU  ###########
##
#1- exibir status da utilizacao das particoes do sistema;(df -h)#
#2- exibir relacao de usuarios logados;(who)#
#3- exibir data/hora;(date)#
#4- sair#
##
####################################################################################"
echo;read -p"informe uma das opcoes acima[1-4]:"opcao
case $opcao in
1)echo;echo "status da utilizacao das particoes do sistema:"
df -h;echo
echo "pressione qualquer tecla para voltar ao menu"
read n-1
;;
2)echo;echo "relacao de usuarios logados:"
who|awk'{print$1}';echo
echo "pressione qualquer tecla para voltar ao menu"
read n-1
;;
3)echo;echo "data/hora:"
date "+%d/%m/%y%H:%M";echo
echo "pressione qualquer tecla para voltar ao menu"
read n-1
;;
4)echo "saindo"
sleep 1
exit 1
;;
*)echo "opcao indiesponivel, tente novamente"
echo
sleep 2
;;
esac
./$0
exit 0
