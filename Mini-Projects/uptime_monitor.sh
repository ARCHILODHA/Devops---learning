#!/bin/bash
URL="https://google.com"

if curl -s --head $URL | grep "200 OK" > /dev/null; then
  echo "UP"
else
  echo "DOWN"
fi
