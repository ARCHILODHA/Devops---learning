#!/bin/bash

# Measure website response time

URL="${1:-https://example.com}"

if ! command -v curl >/dev/null 2>&1; then
    echo "Error: curl is not installed."
    exit 1
fi

RESPONSE=$(curl -L -s -o /dev/null \
    --connect-timeout 5 --max-time 20 \
    -w '%{http_code} %{time_total}' "$URL")

RESULT=$?

if [ "$RESULT" -ne 0 ]; then
    echo "[$(date)] ERROR: Request failed for $URL"
    exit 1
fi

read -r HTTP_CODE RESPONSE_TIME <<< "$RESPONSE"

echo "Website: $URL"
echo "HTTP Status: $HTTP_CODE"
echo "Response Time: ${RESPONSE_TIME}s"

if awk -v t="$RESPONSE_TIME" 'BEGIN { exit !(t > 2) }'; then
    echo "WARNING: Response time exceeds 2 seconds."
else
    echo "Response time is within the configured threshold."
fi
