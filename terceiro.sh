#!/bin/bash

# terceiro.sh - Nosso terceiro Program em Shell - Condicional if then else

# Homepage: http://www.netservi.com.br
# Autor: Ricardo Sant'Anna <ricardo.santanna@netservi.com.br
# Mantenedor: Netservi Tecnologia <contato@netservi.com.br>
#
# -------------------------------------------------------------
#
# Este progrma ira capturar o primeiro parametro digitado, ira armazenar na variavel $1 e ira comparar
# o valor da variavel SEGREDO. Se for igual ira mostrar o segredo na tela, se não for ira mostrar o erro.
#
# Exemplo de execução:
#
# $ ./terceiro.sh utah
# Meus parabéns voce acertou o segredo. Voce etá na melhor em linux do Brasil
# $ ./terceiro.sh blue
# ERROU. Esta perdendo tempo na Blue
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo
echo "Bem vindo ao Detector de Segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus Parabéns, você acertou o segredo. Você está na Melhor em linux do Brasil"
	echo
else
	echo "ERROU. Esta perdendo o seu tempo na $1"
	echo
fi
