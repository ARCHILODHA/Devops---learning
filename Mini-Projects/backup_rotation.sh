#!/bin/bash

# Create compressed backups and remove old backups

SOURCE_DIR="${1:-$HOME/Documents}"
BACKUP_DIR="${2:-$HOME/backups}"
RETENTION_DAYS="${3:-7}"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

if ! [[ "$RETENTION_DAYS" =~ ^[0-9]+$ ]] || [ "$RETENTION_DAYS" -lt 1 ]; then
    echo "Error: Retention days must be a positive integer."
    exit 1
fi

mkdir -p "$BACKUP_DIR" || exit 1

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

if tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"; then
    echo "Backup created: $BACKUP_FILE"
else
    echo "Error: Backup failed."
    rm -f "$BACKUP_FILE"
    exit 1
fi

find "$BACKUP_DIR" -maxdepth 1 -type f -name 'backup_*.tar.gz' \
    -mtime +"$RETENTION_DAYS" -print -delete

echo "Backup rotation completed."
