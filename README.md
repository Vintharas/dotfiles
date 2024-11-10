# dotfiles

dotfiles for my personal use managed with stow. So far they include:

* zshrc
* tmux

## Pre-requisites

Install [stow](https://www.gnu.org/software/stow/). On MacOS, you can use [homebrew](https://brew.sh/):

```bash
# Install stow
brew install stow
```

## Installation

1. Clone the repository
2. Use stow to symlink the desired configuration files

```bash
stow zsh tmux
```
