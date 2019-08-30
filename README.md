# .dotfiles

## Getting started
Create a `.dotfiles` folder in `$HOME`, which is used to track the dotfiles
```
git init --bare $HOME/.dotfiles
```

Create an alias `dotfiles`
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Set git status to hide untracked files
```
dotfiles config --local status.showUntrackedFiles no
```

Add the alias to .zshrc (or .bashrc)
```
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
```

## Usage
Regular git commands can now be used with `dotfiles`
```
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Added .vimrc"
dotfiles add .zshrc
dotfiles commit -m "Added .zshrc"
dotfiles push
```

## Setting up environment in a new computer
After installing `git`, clone the GitHub repository
```
git clone --bare https://github.com/USERNAME/dotfiles.git $HOME/.dotfiles
```
Define the alias in the current shell scope
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
Checkout the actual content from the git repository to `$HOME`
```
dotfiles checkout
```

## Acknowledgments

* [Anand Iyer](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html) - A simpler way to manage your dotfiles
* [Medium](https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b) - How to manage your dotfiles with git
