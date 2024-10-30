#!/bin/bash

sudo apt update
sudo apt install -y locales

sudo locale-gen en_US.UTF-8

echo "export LANG=en_US.UTF-8" >> "$HOME/.bashrc"
echo "export LC_ALL=en_US.UTF-8" >> "$HOME/.bashrc"
