#!/bin/bash

# Check HTTP status codes for websites

URL="${1:-https://example.com}"

if ! command -v curl >/dev/null 2>&1; then
    echo "Error: curl is not installed."
    exit 1
fi

STATUS_CODE=$(curl -L -s -o /dev/null -w "%{http_code}" \
    --connect-timeout 5 --max-time 15 "$URL")
RESULT=$?

if [ "$RESULT" -ne 0 ]; then
    echo "[$(date)] ERROR: Unable to connect to $URL"
    exit 1
fi

echo "[$(date)] URL: $URL"
echo "HTTP Status Code: $STATUS_CODE"

if [[ "$STATUS_CODE" =~ ^2[0-9][0-9]$ ]]; then
    echo "STATUS: Website is healthy."
elif [[ "$STATUS_CODE" =~ ^3[0-9][0-9]$ ]]; then
    echo "STATUS: Website redirects."
else
    echo "STATUS: Website returned an unexpected response."
    exit 1
fi
