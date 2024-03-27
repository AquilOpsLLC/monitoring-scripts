#!/bin/bash
echo "Network Traffic (in MB):"
ifstat -i <interface-name> 1 1 | grep "TX" | awk '{print "TX: " $10 " MB, RX: " $8 " MB"}'
