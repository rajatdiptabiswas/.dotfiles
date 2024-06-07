#!/usr/bin/env zsh

brew install stow

rm -rf "$HOME/.dotfiles/"
git clone --branch macos-brew-zsh https://github.com/rajatdiptabiswas/.dotfiles.git "$HOME/.dotfiles"

DOTFILES=(".zshrc" ".tmux.conf" ".vimrc")

for DOTFILE in "${DOTFILES[@]}"; do
    rm -f "$HOME/$DOTFILE"
done

stow --dir "$HOME/.dotfiles" --target "$HOME" .
