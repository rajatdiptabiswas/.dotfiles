#!/bin/bash

sudo apt update
sudo apt install -y curl vim xclip

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +qa
