#!/bin/bash
echo "Disk Space Usage:"
df -h | grep -E '^Filesystem|/dev/sda*' | awk '{print $1 ": " $5 " used"}'
