#!/bin/bash
echo "TCP Connection States:"
netstat -an | awk '/^tcp/ {print $6}' | sort | uniq -c
