#!/bin/bash

BACKUP_DIRECTORY="$HOME/backups/$TIMESTAMP"
MYSQL_ROOT_USER="root"
MYSQL_PASSWORD="YOURMYSQLPASSWORD" #Add your Database password here
TIMESTAMP=$(date +"%F")
MYSQL=`which mysql`
MYSQLDUMP=`which mysqldump`

mkdir -p "$BACKUP_DIRECTORY/mysql"

#Get List of all Tables
databases=`$MYSQL --user=$MYSQL_ROOT_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema)"`

for db in $databases; do
  $MYSQLDUMP --force --opt --user=$MYSQL_ROOT_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIRECTORY/mysql/$db.sql.gz"
done
