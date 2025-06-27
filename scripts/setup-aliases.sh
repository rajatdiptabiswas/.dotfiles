#!/usr/bin/env zsh

ALIAS_FILE="$HOME/.aliases"
ZSHRC_FILE="$HOME/.zshrc"
SOURCE_LINE="source $ALIAS_FILE"

if ! grep -Fxq "$SOURCE_LINE" "$ZSHRC_FILE"; then
  echo "" >> "$ZSHRC_FILE"
  echo "$SOURCE_LINE" >> "$ZSHRC_FILE"
fi
