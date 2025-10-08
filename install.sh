#!/bin/bash

mkdir -p ~/.config
ln -sf $PWD/nvim ~/.config/nvim
ln -sf $PWD/wezterm ~/.config/wezterm

echo "Configs installed!"
