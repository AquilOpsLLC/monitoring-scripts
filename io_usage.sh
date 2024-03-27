#!/bin/bash
echo "Disk IO Usage (Read/Write in kB/s):"
iostat -d -m | grep -E '^Device|^sd'
