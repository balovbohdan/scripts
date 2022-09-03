#!/usr/bin/sh

NVIM_BALOV=~/.config/nvim-balov

export NVIM_BALOV

brew install neovim
brew install stow

rm -rf $NVIM_BALOV
mkdir -p $NVIM_BALOV/share
mkdir -p $NVIM_BALOV/nvim
stow --restow --target=$NVIM_BALOV/nvim .

alias nvb="XDG_DATA_HOME=$NVIM_BALOV/share XDG_CONFIG_HOME=$NVIM_BALOV nvim"

export nvb
