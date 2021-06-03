#!/bin/bash

# quinto.sh - Nosso quinto Programa em Shell - Condicional case

# Homepage: http://www.netservi.com.br
# Autor: Ricardo Sant'Anna <ricardo.santanna@netservi.com.br
# Mantenedor: Netservi Tecnologia <contato@netservi.com.br>
#
# -------------------------------------------------------------
#
# Este programa ira capturar o primeiro parametro passado depois do programa e ira armazenar na variavel
# $1, caso o valor seja start, executara o trecho de comandos start, caso seja stop, executara o trecho do
# comando stop....
#
# Exemplo de execução:
#
# $ ./quinto.sh
# Bem vindo ao programa stronger.
# Iniciando o programa.
# ...
# .......
# ..............
# .....................
#Programa iniciado com sucesso.
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

PID="/tmp/stronger.pid"
echo
echo "Bem vindo ao Stronger!"
echo
case $1 in
	start)
		echo
		echo "Iniciando o programa Stronger"
		echo "......"
		sleep 2s
		echo ".............."
		sleep 2s
		echo "......................"
		sleep 2s
		echo "................................"
		touch $PID
		echo "Programa Stronger iniciado com sucesso"
		;;
	stop)
		echo
		echo "Parando o programa Stronger"
		echo "......"
		sleep 2s
		echo "..............."
		sleep 2s
		echo "......................."
		sleep 2s
		echo ".................................."
		rm $PID
		echo "Programa Stronger parado com sucesso"
		;;
	status)
		echo
		echo "Verificando o status do Programa Stronger"
		echo
		if [ -f "$PID" ]; then
			echo "O programa Stronger está em execução"
		else
			echo "O programa Stronger está parado"
		fi

		;;
	*)
		echo "Por favor Digite ./quinto start | stop | status"
		;;
esac

exit 0
