#!/bin/bash

if pgrep -x "gammastep" > /dev/null; then
    echo "Gammastep đang chạy, tắt nó đi..."
    pkill gammastep
    notify-send "Gammastep" "Đã tắt chế độ lọc ánh sáng xanh" -u normal -i dialog-information
else
    echo "Gammastep chưa chạy, khởi động nó..."
    gammastep-indicator -l 10.75:106.67 -t 3000:3000 &
    notify-send "Gammastep" "Đã bật chế độ lọc ánh sáng xanh" -u normal -i dialog-information
fi
