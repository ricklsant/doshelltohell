#!/bin/bash

# sexto.sh - Nosso sexto Programa em Shell - Condicionais While, Until e For

# Homepage: http://www.netservi.com.br
# Autor: Ricardo Sant'Anna <ricardo.santanna@netservi.com.br
# Mantenedor: Netservi Tecnologia <contato@netservi.com.br>
#
# -------------------------------------------------------------
#
# Este programa ira verificar o valor da variavel NUMERO, enquanto o valor da variavel for menor 
# que 10, ele ira mostrar a mensagem na tela que o valor é menos que 10 e mostrara o valor da variavel
# quando o valor atingir 10 o programa será finalizado.
#
# Exemplo de execução:
#
# $ ./sexto.sh
#O valor da Variavel é 0, que é menor que 10.
#O valor da variavel é 1, que é menor que 10.
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

NUMERO="0"

echo
echo "Bem Vindo ao programa de Numeros"
echo

while [ $NUMERO -lt "10" ]; do
	echo
	echo "O valor da variavel é: $NUMERO"
	echo "O $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done

echo
echo Programa executado com sucesso e finalizado.
echo

exit 0
