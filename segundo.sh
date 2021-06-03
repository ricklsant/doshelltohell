#!/bin/bash

# segundo.sh - Nosso Segundo Programa em Shell - Variaveis de Controle Internas do Shell

# Homepage: http://www.netservi.com.br
# Autor: Ricardo Sant'Anna <ricardo.santanna@netservi.com.br
# Mantenedor: Netservi Tecnologia <contato@netservi.com.br>
#
# -------------------------------------------------------------
#
# Este progrma ira mostrar as principais variaveis de controles internas do shell, que poderão ser
# usadas por outros programas a fim de obtermos alguma informação. 
#
# Exemplo de execução:
#
# $ ./segundo.sh linux
# O valor da Variavel $1 é linux
# $ ./segundo.sh linux windows
# O valor da variável $1 é linux
# O valor da Variável $2 é windows
#
# Histórico de Versões
#
# Versão: 1.0
#
# COPYRIGHT: Este programa é GPL

echo "Bem vindo as Variaveis de Controle Internas do Shell"
echo
echo "A variavel \$1 armazena o primeiro parametro passado depois do script, que foi: $1"
echo
echo "A variavel \$2 armazena o segundo parametro passado depois do script, que foi: $2"
echo
echo "A variavel \$3 armazena o terceiro parametro passado depois do script, que foi: $3"
echo
echo "A variavel \$0 armazena o comando que foi executado | nome do programa, que foi: $0"
echo
echo "A variavel \$# armazena o numero de parametros que foram passados, que foram: $#"
echo
echo "A variavel \$\$ ou \$@ armazena o numero de PID do processo gerado na execução do programa, que foi: $$"
echo
echo "A variavel \$? armazena o valor de retorno do ultimo comando | programa executado, que foi: $?"
echo
