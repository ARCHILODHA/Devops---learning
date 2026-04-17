#!/bin/bash

usage=$(top -bn1 | grep "Cpu" | awk '{print $2}')

if (( $(echo "$usage > 80" | bc -l) )); then
  echo "High CPU usage!"
fi
