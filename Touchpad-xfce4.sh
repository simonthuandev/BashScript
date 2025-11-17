#!/bin/bash
id=$(xinput list | grep -i 'ELAN1203:00 04F3:307A Touchpad' | awk '{print $6}' | cut -d'=' -f2)
# id=16
state=$(xinput list-props "$id" | grep "Device Enabled" | awk '{print $4}')
if [ "$state" -eq 1 ]; then
    xinput disable "$id"
    notify-send "Touchpad disabled"
else
    xinput enable "$id"
    notify-send "Touchpad enabled"
fi
