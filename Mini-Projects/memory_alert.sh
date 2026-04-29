#!/bin/bash

THRESHOLD=80
USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

if (( $(echo "$USAGE > $THRESHOLD" | bc -l) )); then
  echo "High memory usage: $USAGE%"
fi
