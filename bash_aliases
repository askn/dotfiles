# "cd" kısayolları.
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd-='cd -'

alias g=git

# "rm" komutu "-f" kullanılmadığı sürece güvenli.
alias rm='rm -i'

# enable color support of ls and also add handy aliases
# [ -x /usr/bin/dircolors ] && [ -r ~/.dircolors ] &&
# 	eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#
alias ls='ls -FGH'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


alias ll='ls -l'
alias la='ls -A'
alias lc='ls -CF'
alias lm='ls -al | less'
