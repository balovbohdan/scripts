#!/usr/bin/sh

NVIM_BALOV=~/.config/nvim-balov

export NVIM_BALOV

alias nvb="XDG_DATA_HOME=$NVIM_BALOV/share XDG_CONFIG_HOME=$NVIM_BALOV nvim"

export nvb

nvb
