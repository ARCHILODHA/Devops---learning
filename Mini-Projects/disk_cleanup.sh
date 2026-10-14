#!/bin/bash

# Find large files and optionally remove old temporary files

TARGET_DIR="${1:-/tmp}"
SIZE_LIMIT="${2:-100M}"
RETENTION_DAYS="${3:-7}"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory does not exist: $TARGET_DIR"
    exit 1
fi

if ! [[ "$RETENTION_DAYS" =~ ^[0-9]+$ ]]; then
    echo "Error: Retention days must be a non-negative integer."
    exit 1
fi

echo "Scanning $TARGET_DIR for files larger than $SIZE_LIMIT..."

find "$TARGET_DIR" -type f -size +"$SIZE_LIMIT" -print

echo
echo "Temporary files older than $RETENTION_DAYS days:"

find "$TARGET_DIR" -type f -name '*.tmp' \
    -mtime +"$RETENTION_DAYS" -print

echo
read -r -p "Delete these old .tmp files? (y/N): " CONFIRM

if [[ "$CONFIRM" =~ ^[Yy]$ ]]; then
    find "$TARGET_DIR" -type f -name '*.tmp' \
        -mtime +"$RETENTION_DAYS" -print -delete
    echo "Cleanup completed."
else
    echo "No files deleted."
fi
