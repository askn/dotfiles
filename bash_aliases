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

alias ber="bundle exec rspec"
alias be="bundle exec"

alias cr="crystal"
alias crfmt="crystal tool format"

alias _g="cd ~/_/go/src/"
alias _pr="cd ~/_/protel/"
alias _pt="cd ~/_/protein/"

alias vim="nvim"

alias bilo="bundle exec rake db:migrate:reset"
alias bilot="bundle exec rake db:migrate:reset RAILS_ENV=test"
alias rdm="bundle exec rake db:migrate"
alias rdmt="bundle exec rake db:migrate RAILS_ENV=test"

alias gmd="railroady -a -i -M|dot -Tsvg > models.svg"
