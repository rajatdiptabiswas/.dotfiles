alias c='clear'
alias h='history'
alias j='jobs -l'
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
alias lla='ls -lahF'
alias lt='ls -lAhFt'
alias ltr='ls -lAhFtr'

# apt
alias update='sudo apt update'
alias upgrade='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install -y'
alias remove='sudo apt autoremove -y'

# iptables
alias ipt='sudo iptables'
alias iptr='sudo iptables -t raw'
alias iptm='sudo iptables -t mangle'
alias iptn='sudo iptables -t nat'
alias iptf='sudo iptables -t filter'
alias ipts='sudo iptables -t security'
alias iptl='sudo iptables -L -v -n --line-numbers'
alias iptlr='sudo iptables -L -v -n --line-numbers -t raw'
alias iptlm='sudo iptables -L -v -n --line-numbers -t mangle'
alias iptln='sudo iptables -L -v -n --line-numbers -t nat'
alias iptlf='sudo iptables -L -v -n --line-numbers -t filter'
alias iptls='sudo iptables -L -v -n --line-numbers -t security'
alias iptflush='sudo iptables -F'
alias iptrflush='sudo iptables -t raw -F'
alias iptmflush='sudo iptables -t mangle -F'
alias iptnflush='sudo iptables -t nat -F'
alias iptfflush='sudo iptables -t filter -F'
alias iptsflush='sudo iptables -t security -F'
