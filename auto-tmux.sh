#!/bin/bash

if command -v tmux &> /dev/null; then
  if [ -z "$TMUX" ]; then
    if tmux has-session -t main 2>/dev/null; then
      tmux new-window -t main
      tmux attach-session -t main
    else
      tmux new-session -s main
    fi
    exit 
  fi
fi
# day la thay doi trong torokiko
