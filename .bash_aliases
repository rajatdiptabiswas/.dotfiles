alias c='clear'
alias h='history'
alias x='exit'
alias _='sudo '

alias brc='source $HOME/.bashrc'

# dir
alias md='mkdir -pv'
alias rd='rm -r'

# cd
alias -- -='cd -'
alias ~='cd ~'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ..1='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'

# ls
alias l='ls -ACF'
alias ll='ls -lAhF'
alias lt='ls -lAhFt'
alias ltr='ls -lAhFtr'

# jobs
alias j='jobs -l'

# apt
alias upgrade='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install -y'
alias remove='sudo apt autoremove -y'

# iptables
alias ipt='sudo iptables'
alias iptl='sudo iptables -L -v -n --line-numbers'
alias iptf='sudo iptables -F'
