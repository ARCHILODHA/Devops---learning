#!/bin/bash

# Monitor established SSH connections

if ! command -v ss >/dev/null 2>&1; then
    echo "Error: ss command is unavailable."
    exit 1
fi

echo "SSH Connection Monitor"
echo "======================"
echo "Timestamp: $(date)"

CONNECTIONS=$(ss -tn state established '( sport = :22 )')

echo "$CONNECTIONS"

COUNT=$(printf '%s\n' "$CONNECTIONS" | tail -n +2 | grep -c .)

echo
echo "Established SSH connections: $COUNT"

if [ "$COUNT" -gt 10 ]; then
    echo "WARNING: High number of SSH connections detected."
else
    echo "SSH connection count is within the configured threshold."
fi
