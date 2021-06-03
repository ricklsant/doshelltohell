#!/bin/bash

# decimo.sh - Nosso decimo Programa em Shell - Script de Backup Completo.

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

# BKPDIR - Local onde será armazenado os arquivos de backup.
BKPDIR="/srv/backup"
# FILEDIR - Local onde estão os arquivos de origem, que faremos backup.
FILESDIR="/srv/samba"
LOGFILE="/srv/log/backup.log"
ERROLOG="/srv/log/backup_erro.log"
DATE=$(date +%d_%m_%Y)
FILENAME="/srv/backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf $FILENAME $BKPDIR"
MAILADMIN="ricardo.santanna@netservi.com.br"
SENDUSER="root@utah.local"

echo -e "\n"
echo "Iniciando o Script de Backup"
echo -e "\n"

verificar() {
if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	mail_err
	exit 1
fi
}

mail() {

	sendEmail -f $SENDUSER -t $MAILADMIN -u "Mensagem de Backup" -a $LOGFILE -m "Segue email de backup"
}

mail_err() {

	sendEmail -f $SENDUSER -t $MAILADMIN -u "Mensagem de erro no Backup" -a $ERROLOG -m "Segue email de backup"
}

rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERROLOG
verificar
mail

[ -f "$COMPACT" ] || $COMPACT
verificar

echo
echo "Backup finalizado"

exit 0

