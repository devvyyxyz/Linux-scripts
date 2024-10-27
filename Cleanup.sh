#!/bin/bash

# Cleanup script
# Usage: ./cleanup.sh <directory> <days>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <days>"
    exit 1
fi

DIRECTORY=$1
DAYS=$2

# Remove files older than specified days
find "$DIRECTORY" -type f -mtime +$DAYS -exec rm {} \;

echo "Files older than $DAYS days have been removed from '$DIRECTORY'."
