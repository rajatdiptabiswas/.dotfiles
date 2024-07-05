#!/bin/bash

sudo apt update
sudo apt install -y tmux

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
