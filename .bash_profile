###
## General bash command
###
alias subl='/Applications/Sublime\ Text\.app/Contents/SharedSupport/bin/subl'
alias updatedb="sudo /usr/libexec/locate.updatedb"

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

###
## Idiot bash alias
###
alias gitst="git st"
alias gits="git st"
alias gi="git"
alias gti="git"
alias ll="ls -l"
alias l="ls -l"
alias la="ls -la"
alias s="git st"
alias dclean="docker ps -q -a | xargs docker rm"

###
## Show git branch (if any) directly in command prompt! :)
###
## define usefule things
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# For Bold => 1;XXm instead of 0;XXm
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"

## Use them in the prompt
PS1="$YELLOW\$(parse_git_branch) $GREEN\w$NO_COLOR\$ "

#git bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then 
    source ~/.bashrc 
fi

=======
### Exports

export GOPATH=$HOME/Development/Go
export GOBIN=$HOME/Development/Go/bin

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/Development/flutter/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH=$PATH:/usr/local/mysql/bin

