#!/bin/bash

# Check whether required system services are active

SERVICES=("ssh" "cron" "docker" "nginx")
FAILED=0

if ! command -v systemctl >/dev/null 2>&1; then
    echo "Error: systemctl is unavailable."
    exit 1
fi

echo "Service Dependency Check"
echo "========================"
echo "Timestamp: $(date)"
echo

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "[OK] $SERVICE is active."
    else
        echo "[FAIL] $SERVICE is inactive or unavailable."
        FAILED=$((FAILED + 1))
    fi
done

echo
echo "Total services checked: ${#SERVICES[@]}"
echo "Failed checks: $FAILED"

if [ "$FAILED" -gt 0 ]; then
    exit 1
fi

echo "All configured services are active."
