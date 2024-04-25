# .dotfiles

## Setup

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/rajatdiptabiswas/.dotfiles/linux-apt-bash/scripts/setup.sh)"
```
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/rajatdiptabiswas/.dotfiles/linux-apt-bash/scripts/install-vim.sh)"
```

## Usage

After installing `git`, clone the GitHub repository

```bash
git clone https://github.com/rajatdiptabiswas/.dotfiles.git $HOME/.dotfiles
```

Install GNU Stow `stow`

```bash
sudo apt install stow
```

Run `stow` to symlink files in `$HOME/.dotfiles` to `$HOME`

```bash
cd ~/.dotfiles
stow .
```

## Acknowledgements

- [Manage dotfiles with GNU Stow](https://dr563105.github.io/blog/manage-dotfiles-with-gnu-stow/)
- [Using GNU Stow to Manage Symbolic Links for Your Dotfiles](https://systemcrafters.net/managing-your-dotfiles/using-gnu-stow/)
