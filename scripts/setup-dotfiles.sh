#!/usr/bin/env zsh

# exit script if any command fails
set -e

brew install stow

DOTFILES=(
    "$HOME/.tmux.conf"
    "$HOME/.vimrc"
    "$HOME/.aliases"
)

for DOTFILE in "${DOTFILES[@]}"; do
    rm -f "$DOTFILE"
done

stow --dir "$HOME/.dotfiles" --target "$HOME" --no-folding .
