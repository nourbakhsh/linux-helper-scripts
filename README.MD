#Linux Helper Scripts
These are a bunch of helper Scripts which I frequently use.

##backup-all-db.sh
This script Creates Backups from all MYSQL Databases where each Database is backedup into a separate SQL file.

**How to use:**
Download File: 
Insert your Parameter for:
BACKUP_DIRECTORY="$HOME/backups/$TIMESTAMP"
MYSQL_ROOT_USER="root"
MYSQL_PASSWORD="YOURMYSQLPASSWORD"

**Import SQL Files**
gunzip < data-dump.sql.gz | mysql -u username -p database_name

