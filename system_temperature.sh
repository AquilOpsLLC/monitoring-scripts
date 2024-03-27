#!/bin/bash
echo "System Temperature:"
sensors | grep -i 'temp'
