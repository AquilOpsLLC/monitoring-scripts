#!/bin/bash
echo "Memory Usage:"
free -m | grep Mem | awk '{print $3 " MB used out of " $2 " MB total (" $4 " MB free)"}'
