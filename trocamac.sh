#!/bin/bash
#
#script para troca de mac automatica
#caso sua interface de rede for diferente e so trocar no prgrama.
# ###############################################################
#
gdialog --title "TROCAMAC" --msgbox "SEJA, BEM VINDO" 0 0 #mudança para v-0.2
sleep 2
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
opcoes=("wlan0" "wlan1" "wlan2" "sair do script")

sleep 0.10 && echo -e "\033[31;1;1m
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
                       V 0.3 DEVELOPED BY Mateus Rodrigues. \033[m"
#mudança para v-0.3
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
	"sair do script")
		sleep 0.20 && echo -e "\033[31;1;1m
SAINDO... \033[m"
		break
		;;
	*) echo "Opcao invalida"
  esac
done
