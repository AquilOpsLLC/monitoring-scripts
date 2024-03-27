#!/bin/bash
echo "Number of TCP Connections:"
netstat -an | grep -i tcp | wc -l
