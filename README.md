# .dotfiles

## Usage

After installing `git`, clone the GitHub repository

```bash
git clone https://github.com/rajatdiptabiswas/.dotfiles.git $HOME/.dotfiles
```

Install GNU Stow `stow`

```bash
# macOS
brew install stow

# Ubuntu
sudo apt install stow
```

Run `stow` to symlink files in `$HOME/.dotfiles` to `$HOME`

```bash
cd ~/.dotfiles
stow .
```

## Dependencies

[Homebrew](https://brew.sh)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```shell
vim
:PlugInstall
```

## Acknowledgements

- [Manage dotfiles with GNU Stow](https://dr563105.github.io/blog/manage-dotfiles-with-gnu-stow/)
- [Using GNU Stow to Manage Symbolic Links for Your Dotfiles](https://systemcrafters.net/managing-your-dotfiles/using-gnu-stow/)
