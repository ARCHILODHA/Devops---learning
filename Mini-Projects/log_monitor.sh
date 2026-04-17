#!/bin/bash

echo "Monitoring logs..."

tail -f /var/log/syslog | grep "error"
