#!/usr/bin/env zsh

brew install stow

rm -rf "$HOME/.dotfiles/"
git clone --branch macos-brew-zsh https://github.com/rajatdiptabiswas/.dotfiles.git "$HOME/.dotfiles"

DOTFILES=(
    ".zshrc"
    ".tmux.conf"
    ".vimrc"
    ".config/kitty/kitty.conf"
    ".config/kitty/current-theme.conf"
    ".config/aerospace/aerospace.toml"
    ".config/macchina/macchina.toml"
    ".config/ranger/rc.conf"
    ".config/tmux-powerline/config.sh"
    ".config/tmux-powerline/themes/theme.sh"
    ".oh-my-zsh/custom/aliases.sh"
    ".oh-my-zsh/custom/iptables.sh"
    ".oh-my-zsh/custom/rsync.sh"
)

for DOTFILE in "${DOTFILES[@]}"; do
    rm -f "$HOME/$DOTFILE"
done

stow --dir "$HOME/.dotfiles" --target "$HOME" .

