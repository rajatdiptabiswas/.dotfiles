#!/bin/zsh

rm -f $HOME/.dotfiles/Brewfile

brew bundle dump --file=$HOME/.dotfiles/Brewfile
