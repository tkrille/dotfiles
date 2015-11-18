# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="afowler"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github hub autojump mvn gradle command-not-found common-aliases cp extract gitignore sudo themes systemadmin vagrant docker heroku rsync python pip postgres grunt docker-compose systemd)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'
export MANWIDTH=${MANWIDTH:-80}
export LESS="-diMRSX -P?fFile %f:stdin. ?m(%i of %m) :.line %l ?Lof %L:.?p (%p\%):."

alias cd..="cd .."
alias ll="ls -hl"
alias jjs="rlwrap jjs"
alias xps='ps aucx | head -1; ps aucx | grep -i '
alias o=xdg-open
alias c='xclip -selection c'
alias i='sudo dnf install'
alias vi=vim
alias up='sudo dnf clean all && sudo dnf upgrade -y'

bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

preexec () {
  DATE=`date +"%H:%M:%S on %Y-%m-%d"`
  C=$(($COLUMNS-24))
  echo -e "\033[1A\033[${C}C ${DATE} "
}

if [ -d "$HOME/opt/go" ]; then
  export GOROOT=$HOME/opt/go
  export PATH=$PATH:$GOROOT/bin
  export GOPATH=$HOME/Source/Go
  export PATH=$GOPATH/bin:$PATH
fi

# Docker stuff

export DOCKER_HOST=tcp://localhost:2376
export DOCKER_TLS_VERIFY=1
alias docker-stop='docker rm -fv $(docker ps -aq)'
alias docker-clean='docker volume rm $(docker volume ls --filter dangling=true -q); docker rmi -f $(docker images --filter dangling=true -q)'

if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/thomas/.sdkman"
[[ -s "/home/thomas/.sdkman/bin/sdkman-init.sh" ]] && source "/home/thomas/.sdkman/bin/sdkman-init.sh"

export VAGRANT_DEFAULT_PROVIDER=virtualbox
