#!/usr/bin/env bash

sudo apt update
sudo apt install -y git stow

rm -rf "$HOME/.dotfiles/"
git clone --branch linux-apt-bash https://github.com/rajatdiptabiswas/.dotfiles.git "$HOME/.dotfiles"

DOTFILES=("$HOME/.tmux.conf" "$HOME/.vimrc" "$HOME/.bash_aliases")

for DOTFILE in "${DOTFILES[@]}"; do
    rm -f "$DOTFILE"
done

stow --dir "$HOME/.dotfiles" --target "$HOME" .

if ! grep -q "export TERM=xterm-256color" "$HOME/.bashrc"; then
    echo "export TERM=xterm-256color" >> "$HOME/.bashrc"
fi

source $HOME/.bashrc
