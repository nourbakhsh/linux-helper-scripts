# Linux Helper Scripts
These are a bunch of helper Scripts which I frequently use.

## backup-all-db.sh
This script Creates Backups from all MYSQL Databases where each Database is backedup into a separate SQL file.

**How to use:**

Download File: wget https://raw.githubusercontent.com/nourbakhsh/linux-helper-scripts/master/backup-all-db.sh
Insert your Parameter for:
BACKUP_DIRECTORY="$HOME/backups/$TIMESTAMP"
MYSQL_ROOT_USER="root"
MYSQL_PASSWORD="YOURMYSQLPASSWORD"
Makes it executable:
*chmod +x backup-all-db.sh*
run ./backup-all-db.sh

**Import SQL Files**
gunzip < data-dump.sql.gz | mysql -u username -p database_name

