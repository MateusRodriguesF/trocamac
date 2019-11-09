#!/bin/bash
#
#script para troca de mac automatica
#caso sua interface de rede for diferente e so trocar no prgrama.
# ###############################################################
#
MSG_HELP=" Meu nome e Mateus Rodrigues da Fonseca, tenho 28 anos, sou tecnico em informatica e estudo programaçao de forma autodidata 
e esse e meu primeiro script fucional, espero que possa ajudar de alguma forma.
script para troca de mac automatica caso sua interface de rede for diferente e so trocar no programa.
Sinta-se a vontade para fazer mudanças necessarias no programa mas, nao esqueça de dar credito ao meu trabalho."
VERS=" Versao atual 0.6"
horas=`date | cut -d " " -f4 | cut -d: -f1`
USU=`whoami`
gdialog --title "TROCAMAC" --msgbox "SEJA, BEM VINDO" 0 0 #mudança para v-0.2
sleep 1
funcao1() {
	ifconfig wlan0 down
	macchanger -r wlan0
	service network-manager restart
	echo "SEU MAC FOI ALTERADO..."
echo -e "!!!!!
Se deu ERRO certifique-se de ter 
selecionado a interface Correta.
Para Sair digite 4"
}
#mudança para v-0.3
funcao2() {
	ifconfig wlan1 down
	macchanger -r wlan1
	service network-manager restart
	echo "SEU MAC FOI ALTERADO..."
echo -e "!!!!!
Se deu ERRO certifique-se de ter 
selecionado a interface Correta.
Para Sair digite 4"
}
#mudança para v-0.3
funcao2() {
	ifconfig wlan2 down
	macchanger -r wlan2
	service network-manager restart
	echo "SEU MAC FOI ALTERADO..."
echo -e "!!!!!
Se deu ERRO certifique-se de ter 
selecionado a interface Correta.
Para Sair digite 4"
}
opcoes=("wlan0" "wlan1" "wlan2" "sair do script" "Ajuda" "Versao")
sleep 0.05 && echo -e "\033[31;1;1m
#############################################################################

▄▄▄█████▓ ██▀███   ▒█████   ▄████▄   ▄▄▄       ███▄ ▄███▓ ▄▄▄       ▄████▄  
▓  ██▒ ▓▒▓██ ▒ ██▒▒██▒  ██▒▒██▀ ▀█  ▒████▄    ▓██▒▀█▀ ██▒▒████▄    ▒██▀ ▀█  
▒ ▓██░ ▒░▓██ ░▄█ ▒▒██░  ██▒▒▓█    ▄ ▒██  ▀█▄  ▓██    ▓██░▒██  ▀█▄  ▒▓█    ▄ 
░ ▓██▓ ░ ▒██▀▀█▄  ▒██   ██░▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██    ▒██ ░██▄▄▄▄██ ▒▓▓▄ ▄██▒
  ▒██▒ ░ ░██▓ ▒██▒░ ████▓▒░▒ ▓███▀ ░ ▓█   ▓██▒▒██▒   ░██▒ ▓█   ▓██▒▒ ▓███▀ ░
  ▒ ░░   ░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒░   ░  ░ ▒▒   ▓▒█░░ ░▒ ▒  ░
    ░      ░▒ ░ ▒░  ░ ▒ ▒░   ░  ▒     ▒   ▒▒ ░░  ░      ░  ▒   ▒▒ ░  ░  ▒   
  ░        ░░   ░ ░ ░ ░ ▒  ░          ░   ▒   ░      ░     ░   ▒   ░        
            ░         ░ ░  ░ ░            ░  ░       ░         ░  ░░ ░      
                           ░                                       ░        
                                                              
#############################################################################
                     v-0.6 Desenvolvido por Mateus Rodrigues.

 \033[m"
echo -e "\033[31;1;1m################################### MENU #################################### 

\033[m"
#mudança para v-0.6
#funcao do relogio
if (("$horas" >= "06")) && (("$horas" <= "12"))
then
	echo "Bom Dia $USU !

"
elif
	(("$horas" > "12")) && (("$horas" < "18"))
then
	echo "Boa Tarde $USU !

"
else
	echo -e "Boa Noite $USU !

"
fi
#final funcao relogio

#mudança para v-0.3
#funcao select do menu
select nome in "${opcoes[@]}"
do
  case $nome in
	"wlan0")
		funcao1
		;;
	"wlan1")
		funcao2
		;;
	"wlan2")
		funcao3
		;;
	"Versao")
		echo "$VERS" #mudança para v-0.5
		;;
	"Ajuda")
		echo "$MSG_HELP" #mudança para v-0.5
		;;
	"sair do script")
		sleep 0.20 && echo -e "\033[31;1;1m
SAINDO... \033[m"
		break
		;;
	*) echo "Opcao invalida"
  esac
done
#final funcao select
