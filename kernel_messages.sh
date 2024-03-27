#!/bin/bash
echo "Kernel Messages (Last 10 lines):"
dmesg | tail -n 10
