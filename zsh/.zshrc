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
  vi-mode
  zsh-syntax-highlighting        # https://github.com/zsh-users/zsh-syntax-highlighting
  zsh-autosuggestions            # https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
)

source $ZSH/oh-my-zsh.sh

## TERMINAL LANGUAGE
export LANG=en_US.UTF-8
## TERMINAL COLORS
## export TERM="screen-256color"
## Nvim
export VIMCONFIG=~/.config/nvim
export MYVIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
export MYVIMRC=$VIMCONFIG/init.lua
export MYLUAVIMRC=$VIMCONFIG/lua/config.lua
## FZF
export FZF_DEFAULT_COMMAND='rg --files'

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="$HOME/.npm-packages/bin:$PATH"
# homebrew
export PATH="/usr/local/sbin:$PATH"

# Python user packages
export PATH=$PATH:~/Library/Python/2.7/bin
export PATH=$PATH:~/Library/Python/3.7/bin/

### Vim tools useful to have in path
export PATH="$VIMCONFIG/pack/minpac/start/fzf/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# Haskell binaries
export PATH=$PATH:~/.local/bin/

# Enable vi mode
bindkey -v

## Aliases
alias zshrc="nvim ~/.zshrc"
alias zshrc-refresh="source ~/.zshrc && clear"
alias z="zshrc"
alias zrc="z"
alias zs="zshrc-refresh"
alias cl="clear"
alias v="nvim"
alias vim="nvim"
alias vimrc="v $MYVIMRC"
alias vimdir="cd $MYVIMCONFIG"
alias oldvim="/usr/bin/vim"

## Git things done
alias gtd="v -S ~/gtd.vim"
## Aliases for different sessions
alias config="v -S ~/config.vim"


## Tmux Aliases
alias t="tmux"
alias trc="v ~/.tmux.conf"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"

## Git aliases
alias ga="git add"
alias gA="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gac="gA && gc"
alias gC="gA && gcm"
alias gcob="git checkout -b"
alias gp="git push"
alias gst="git status"
alias g1="git log -1 --oneline"
alias gxl="git log"
alias gd="git diff"
alias gbr="git branch"
alias gco="git checkout"

# Mercurial to Git aliases :D
alias hst="gst"
alias hc="gac"
alias hU="gp"

function gac() {
  git add . && git commit $*
}

## Gatsby aliases
alias gastby="gatsby"
alias gad="gatsby develop"
alias gaD="npm run deploy"

## Blog scripts
## blog-article
##  Creates file for a blog article given its title. The resulting file
##  contains the current date.
## Usage: blog-article "Some title here"
## generates file in ./src/pages/blog/2022-01-01-some-title-here.md
function blog-article() {
  # should only work in a blog like barbarian meets coding
  # add some check? :D
  title=$1
  title_lowercase=${(L)title}
  title_lowercase_dashes=$(echo $title_lowercase | tr " " "-")
  # TODO: remove unsupported characters (exclamation, etc)
  # TODO: use some type of scaffolding tool to insert the YAML, etc
  date=$(date "+%Y-%m-%d")
  filename="${date}-${title_lowercase_dashes}.md"
  # The folder could be configurable per specific folder
  directory="./src/pages/blog"
  v "${directory}/${filename}"
}

## bat and cat
alias cat="bat"

## go
export GOPATH=$HOME/GitHub/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

