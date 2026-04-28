#!/bin/bash
FILE="app.log"

echo "Error count:"
grep -i "error" $FILE | wc -l
