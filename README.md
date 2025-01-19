# .dotfiles

This repository contains dotfiles for macOS and Linux, tailored for specific configurations based on the operating system, package manager, and shell.

## Requirements
- [`git`](https://git-scm.com/)
- [`curl`](https://curl.se/)
- [`stow`](https://www.gnu.org/software/stow/)

## Usage

The installation scripts below clone the repository into the `$HOME` directory and use `stow` to symlink the dotfiles from the repository to their expected locations. Additional scripts and dotfiles can be found in the individual branches.

### macOS

#### Branch
[`macos-brew-zsh`](https://github.com/rajatdiptabiswas/.dotfiles/tree/macos-brew-zsh)

#### Installation
```bash
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/rajatdiptabiswas/.dotfiles/macos-brew-zsh/scripts/setup.sh)"
```

### Linux

#### Branch
[`linux-apt-bash`](https://github.com/rajatdiptabiswas/.dotfiles/tree/linux-apt-bash)

#### Installation
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/rajatdiptabiswas/.dotfiles/linux-apt-bash/scripts/setup.sh)"
```

## Acknowledgements

- [Manage dotfiles with GNU Stow](https://dr563105.github.io/blog/manage-dotfiles-with-gnu-stow/)
- [Using GNU Stow to Manage Symbolic Links for Your Dotfiles](https://systemcrafters.net/managing-your-dotfiles/using-gnu-stow/)
