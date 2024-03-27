#!/bin/bash
echo "File System Inodes Usage:"
df -hi | awk '$NF=="/"{printf "Inodes used: %d out of %d (%d%%)\n", $3, $5, $5}'
