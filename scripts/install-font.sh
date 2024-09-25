#!/bin/bash

declare -a fonts=(
    # CaskaydiaCove
    # CascadiaMono
    # DroidSansMono
    # FiraCode
    # FiraMono
    # Hack
    # JetBrainsMono
    # Meslo
    # RobotoMono
    # SourceCodePro
    # Ubuntu
    UbuntuMono
)

fonts_dir="$HOME/.fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

for font in "${fonts[@]}"; do
    zip_file="$font.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$zip_file"
    wget -O "/tmp/$zip_file" "$download_url"
    unzip "/tmp/$zip_file" -d "/tmp/$font/"
    mv "/tmp/$font/"*.ttf "$fonts_dir"
    rm "/tmp/$zip_file"
    rm -rf "/tmp/$font/"
done

fc-cache -fv
