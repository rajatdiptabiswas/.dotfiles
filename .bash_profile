# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH


# Setting colors to terminal and customizing prompt
export PS1="\n\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n\$ "
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxGxDxabagacad
alias ls='ls -GFh'


# Aliases
alias ll='ls -lah'


# Working directory
cd ~/Desktop


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rajat/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rajat/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rajat/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rajat/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda deactivate
