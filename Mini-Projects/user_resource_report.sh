#!/bin/bash

# Generate a system resource and user report

REPORT_DIR="${1:-$HOME/system_reports}"

mkdir -p "$REPORT_DIR" || exit 1

REPORT_FILE="$REPORT_DIR/resource_report_$(date +%Y%m%d_%H%M%S).txt"

{
    echo "SYSTEM RESOURCE REPORT"
    echo "======================"
    echo "Generated: $(date)"
    echo "Hostname: $(hostname)"
    echo

    echo "SYSTEM UPTIME"
    echo "-------------"
    uptime
    echo

    echo "MEMORY USAGE"
    echo "------------"
    free -h 2>/dev/null || echo "Memory statistics unavailable."
    echo

    echo "DISK USAGE"
    echo "----------"
    df -h
    echo

    echo "TOP PROCESSES BY CPU"
    echo "--------------------"
    ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 11
    echo

    echo "LOGGED-IN USERS"
    echo "---------------"
    who
    echo

    echo "NETWORK INTERFACES"
    echo "------------------"
    ip -brief address 2>/dev/null || echo "IP command unavailable."

} > "$REPORT_FILE"

echo "System resource report created:"
echo "$REPORT_FILE"
