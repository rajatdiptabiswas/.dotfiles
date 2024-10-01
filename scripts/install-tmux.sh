#!/bin/zsh

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source-file ~/.tmux.conf

# install tmux plugins
$HOME/.tmux/plugins/tpm/bin/install_plugins
