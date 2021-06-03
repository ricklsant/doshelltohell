#!/bin/bash

# quarto.sh - Nosso quarto Program em Shell - Condicional if then else

# Homepage: http://www.netservi.com.br
# Autor: Ricardo Sant'Anna <ricardo.santanna@netservi.com.br
# Mantenedor: Netservi Tecnologia <contato@netservi.com.br>
#
# -------------------------------------------------------------
#
# Este programa ira ler um parametro digitado, ira armazenar na variavel $DIGITADO e ira comparar
# o valor da variavel SEGREDO. Se for igual ira mostrar o segredo na tela, se não for ira mostrar o erro.
#
# Exemplo de execução:
#
# $ ./quarto.sh
# Digite o segredo:
# utah
# Meus parabéns voce acertou o segredo. Voce etá na melhor em linux do Brasil
# $ ./quarto.sh
# Digite o Segredo:
# blue
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
echo "Por favor, digite o segredo:"

# read irá ler o que o usuário digitou e armazenar na variavel DIGITADO

read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo
	echo "Meus Parabéns, você acertou o segredo. Você está na Melhor em linux do Brasil"
	echo
else
	echo
	echo "ERROU. Esta perdendo o seu tempo na $DIGITADO"
	echo
fi
