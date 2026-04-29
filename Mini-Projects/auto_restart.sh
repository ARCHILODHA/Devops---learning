#!/bin/bash

SERVICE="nginx"

if ! systemctl is-active --quiet $SERVICE; then
  echo "Restarting $SERVICE"
  systemctl restart $SERVICE
fi
