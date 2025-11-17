#!/bin/bash

mem_info=$(free -m | awk '/Mem:/ {printf "%dM", $3}')

echo "󰾆 $mem_info  "
