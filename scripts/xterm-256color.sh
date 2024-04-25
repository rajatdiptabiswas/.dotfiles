#!/bin/bash

BASHRC="$HOME/.bashrc"

if ! grep -q "export TERM=xterm-256color" "$BASHRC"; then
    echo "export TERM=xterm-256color" >> "$BASHRC"
    echo "'export TERM=xterm-256color' added to $BASHRC"
else
    echo "'export TERM=xterm-256color' already present in $BASHRC"
fi
