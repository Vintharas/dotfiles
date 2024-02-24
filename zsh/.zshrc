# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

## TERMINAL COLORS
## export TERM="screen-256color"
## Nvim
export VIMCONFIG=~/.config/nvim
export MYVIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
export MYVIMRC=$VIMCONFIG/init.vim
## FZF
export FZF_DEFAULT_COMMAND='rg --files'

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="$HOME/.npm-packages/bin:$PATH"

# Python user packages
export PATH=$PATH:~/Library/Python/3.7/bin/

### Vim tools useful to have in path
export PATH="$VIMCONFIG/pack/minpac/start/fzf/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# Haskell binaries
export PATH=$PATH:~/.local/bin/

## Aliases
alias zshrc="nvim ~/.zshrc"
alias zshrc-refresh="source ~/.zshrc && clear"
alias z="zshrc"
alias zs="zshrc-refresh"
alias gastby="gatsby"
alias cl="clear"
alias v="nvim"
alias vim="nvim"
alias vimrc="v $MYVIMRC"
alias oldvim="/usr/bin/vim"
alias t="tmux"
## Git aliases
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias g1="git log -1 --oneline"

function gac() {
  git add . && git commit $*
}

## Gatsby aliases
alias gd="gatsby develop"
alias gD="npm run deploy"


