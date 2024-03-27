#!/bin/bash
echo "System Load Average (1 min, 5 min, 15 min):"
cat /proc/loadavg | awk '{print "1 min: " $1 ", 5 min: " $2 ", 15 min: " $3}'
