#!/usr/bin/env zsh

# https://w.amazon.com/bin/view/Main/LinuxBrewOnCloudDesktop

sudo yum groupinstall -y "Development Tools"
sudo yum install -y curl file git libxcrypt-compat

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

ZSHRC_FILE="$HOME/.zshrc"
BREW_PREFIX="/home/linuxbrew/.linuxbrew"
BREW_ENV_LINE="eval \"\$($BREW_PREFIX/bin/brew shellenv)\""

if ! grep -Fxq "$BREW_ENV_LINE" "$ZSHRC_FILE"; then
  echo "" >> "$ZSHRC_FILE"
  echo "$BREW_ENV_LINE" >> "$ZSHRC_FILE"
fi

eval "$($BREW_PREFIX/bin/brew shellenv)"
