#!/bin/bash

# Monitor running processes and check a target process

PROCESS_NAME="${1:-nginx}"

if pgrep -x "$PROCESS_NAME" > /dev/null; then
    echo "[$(date)] STATUS: $PROCESS_NAME is running."
else
    echo "[$(date)] WARNING: $PROCESS_NAME is not running."
fi
