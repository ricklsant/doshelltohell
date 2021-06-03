#!/bin/bash

# oitavo.sh - Nosso sexto Programa em Shell - Laço de repetição For

# Homepage: http://www.netservi.com.br
# Autor: Ricardo Sant'Anna <ricardo.santanna@netservi.com.br
# Mantenedor: Netservi Tecnologia <contato@netservi.com.br>
#
# -------------------------------------------------------------
#
# Este programa ira verificar todos os arquivos .conf dentro do diretorio /etc/. 
# Para cada ocorrencia encontrada mostra a mensagem na tela.
#
# Exemplo de execução:
#
# $ ./oitavo.sh
# O arquivo /etc/zyx.conf foi encontrado.
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

ARQUIVOS="/etc/*.conf"

echo
echo "Bem Vindo ao programa de listagem de arquivos .conf"
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretorio /etc/."
done

echo
echo Programa executado com sucesso e finalizado.
echo

exit 0
