#!/bin/bash

# Archive old log files into a compressed archive

LOG_DIR="${1:-/var/log}"
ARCHIVE_DIR="${2:-$HOME/log_archives}"
RETENTION_DAYS="${3:-30}"

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Log directory does not exist: $LOG_DIR"
    exit 1
fi

if ! [[ "$RETENTION_DAYS" =~ ^[0-9]+$ ]]; then
    echo "Error: Retention days must be a non-negative integer."
    exit 1
fi

mkdir -p "$ARCHIVE_DIR" || exit 1

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="$ARCHIVE_DIR/logs_$TIMESTAMP.tar.gz"

mapfile -d '' OLD_LOGS < <(
    find "$LOG_DIR" -maxdepth 1 -type f -name '*.log' \
        -mtime +"$RETENTION_DAYS" -print0
)

if [ "${#OLD_LOGS[@]}" -eq 0 ]; then
    echo "No log files older than $RETENTION_DAYS days found."
    exit 0
fi

if tar -czf "$ARCHIVE_FILE" -C "$LOG_DIR" \
    -- "${OLD_LOGS[@]##*/}"; then
    echo "Archived ${#OLD_LOGS[@]} log files."
    echo "Archive: $ARCHIVE_FILE"
else
    echo "Error: Log archiving failed."
    rm -f "$ARCHIVE_FILE"
    exit 1
fi
