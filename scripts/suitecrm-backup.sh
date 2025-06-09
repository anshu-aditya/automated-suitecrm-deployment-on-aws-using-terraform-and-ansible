#!/bin/bash
TIMESTAMP=$(date +%F)
BACKUP_DIR="/var/backups/suitecrm"
mkdir -p $BACKUP_DIR

# Backup files
tar -czf $BACKUP_DIR/suitecrm-files-$TIMESTAMP.tar.gz /var/www/html/

# Backup database
mysqldump -u root -pYOURPASSWORD suitecrm > $BACKUP_DIR/suitecrm-db-$TIMESTAMP.sql

# Upload to S3
aws s3 cp $BACKUP_DIR s3://your-backup-bucket/suitecrm-backups/$TIMESTAMP/ --recursive
