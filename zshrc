export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
DISABLE_AUTO_UPDATE="true"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="custom"
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
#HYPHEN_INSENSITIVE="true"

# Would you like to use another custom folder than $ZSH/custom?

plugins=(git ssh-agent tmux sudo zsh-autosuggestions zsh-syntax-highlighting)
# usefull plugins:
# tmux
# vi-mode
# web-search

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
  plugins+=(ssh-agent)
fi

alias ls='ls -lh --color=always --group-directories-first'
alias la='ls -a'
alias ip='ip -c'
alias tree='tree -C'
alias dolphin='nohup dolphin . > /dev/null 2>&1 &'
alias rsync='rsync -ah --progress'


# Spelling corrector
setopt CORRECT

# add path to ruby gems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

bindkey "^n" autosuggest-accept #ctrl+n to accept suggestion
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
