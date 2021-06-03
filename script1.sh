#!/bin/bash

# script01.sh - Emulação do Comando seq em Bash
#
# O comando seq recebe 2 numeros e mostra na saida padrao todos os numeros
# existentes entre eles, numa sequencia pronta para ser usada pelo comando for.
# Caso omitido o numero inicial, é utilizado 1.
#
#Declara o valor da variavel O com soma
O=+
#Declara o valor da variavel A como 1
A=1
#Caso o valor não seja passado Declara o valor da variavel igual ao parametro
Z=${1:-1}

[ "$2" ] && {
       	A=$1
       	Z=$2
}

[ $A -gt $Z ] && O=-

while [ $A -ne $Z ]; do
       	echo $A
       	eval "A=\$((A$O 1))"
done

echo $A
