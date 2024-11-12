#!/usr/bin/env bash

# exit script if any command fails
set -e

sudo apt update
sudo apt install -y git stow

rm -rf "$HOME/.dotfiles"
git clone --branch linux-apt-bash https://github.com/rajatdiptabiswas/.dotfiles.git "$HOME/.dotfiles"

DOTFILES=(
    "$HOME/.tmux.conf"
    "$HOME/.vimrc"
    "$HOME/.bash_aliases"
    "$HOME/.config/kitty/kitty.conf"
)

for DOTFILE in "${DOTFILES[@]}"; do
    rm -f "$DOTFILE"
done

stow --dir "$HOME/.dotfiles" --target "$HOME" .

if ! grep -q "export TERM=xterm-256color" "$HOME/.bashrc"; then
    echo "export TERM=xterm-256color" >> "$HOME/.bashrc"
fi

if ! grep -Fq 'export PS1="\n${PS1/%???/\\n\\$ }"' "$HOME/.bashrc"; then
    # add a new line before the prompt and place '$' on the next line
    # ${PS1/%???/\\n\\$ } replaces the last 3 characters of PS1 '\$ ' with '\n\$ '
    echo 'export PS1="\n${PS1/%???/\\n\\$ }"' >> "$HOME/.bashrc"
fi

source $HOME/.bashrc
