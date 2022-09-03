#!/usr/bin/sh

NVIM_BALOV=~/.config/nvim-balov

export NVIM_BALOV

alias nvb="XDG_DATA_HOME=$NVIM_BEGINNER/share XDG_CONFIG_HOME=$NVIM_BEGINNER nvim"

export nvb

nvb
