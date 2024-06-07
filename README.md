# .dotfiles

## Setup

```bash
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/rajatdiptabiswas/.dotfiles/macos-brew-zsh/scripts/setup.sh)"
```

## Usage

After installing `git`, clone the GitHub repository

```bash
git clone https://github.com/rajatdiptabiswas/.dotfiles.git $HOME/.dotfiles
```

Install Homebrew `brew`

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install GNU Stow `stow`

```bash
brew install stow
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

[Oh My Zsh](https://ohmyz.sh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

[Powerlevel10k](https://github.com/romkatv/powerlevel10k)

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/tree/master)

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

[vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +'PlugInstall --sync' +qa
```

## Acknowledgements

- [Manage dotfiles with GNU Stow](https://dr563105.github.io/blog/manage-dotfiles-with-gnu-stow/)
- [Using GNU Stow to Manage Symbolic Links for Your Dotfiles](https://systemcrafters.net/managing-your-dotfiles/using-gnu-stow/)
