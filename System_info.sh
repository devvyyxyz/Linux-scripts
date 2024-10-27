#!/bin/bash

# System information script
# Usage: ./system_info.sh

echo "System Information:"
echo "---------------------"
echo "Hostname: $(hostname)"
echo "Operating System: $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "CPU Info: $(lscpu | grep 'Model name')"
echo "Memory Usage: $(free -h | grep 'Mem')"
