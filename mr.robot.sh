#!/bin/bash

# decimo.sh - Nosso decimo Programa em Shell - Mr. Robot

# Homepage: http://www.netservi.com.br
# Autor: Ricardo Sant'Anna <ricardo.santanna@netservi.com.br
# Mantenedor: Netservi Tecnologia <contato@netservi.com.br>
#
# -------------------------------------------------------------
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL


source /root/doshelltohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOla eu sou o Mr. Robot. Fui criado para atacar. Não sou seu amigo, mas diga:\nO que você quer que eu faça?\e[m\e[m\e[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga Agora!" ACTION
	echo -e "\n"

	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10 ))"
			ping -c 4 -4 "${sites[$DADO]}"
		;;
		*"nmap"*|*"mapear"*|*"portas abertas"*)
			DADO="$(( $RANDOM % 10 ))"
			nmap -sS "${sites[$DADO]}"
		;;
	*"conecte"*|*"acesse"*|*"ssh"*)
			DADO="$(( $RANDOM % 10 ))"
			ssh -l root "${openssh[$DADO]}"
		;;
	esac

	
done

exit 0
