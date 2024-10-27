#!/bin/bash

# Backup script
# Usage: ./backup.sh <source_directory> <backup_directory>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

SOURCE_DIR=$1
BACKUP_DIR=$2
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create backup
cp -r "$SOURCE_DIR" "$BACKUP_DIR/backup_$TIMESTAMP"

echo "Backup of '$SOURCE_DIR' created in '$BACKUP_DIR/backup_$TIMESTAMP'."
