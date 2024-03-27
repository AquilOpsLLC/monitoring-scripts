#!/bin/bash
echo "Swap Usage:"
free -m | grep Swap | awk '{print $3 " MB used out of " $2 " MB total"}'
