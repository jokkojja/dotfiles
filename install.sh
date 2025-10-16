#!/bin/bash
FISH_CONFIG_FILE="$HOME/.config/fish/config.fish"
STARSHIP_INIT_LINE="starship init fish | source"

brew install --cask wezterm
brew install startship

mkdir -p "$HOME/.config"
cp -R "$PWD/nvim" "$HOME/.config/"
cp -R "$PWD/wezterm" "$HOME/.config/"
cp -R "$PWD/starship/starship.toml" "$HOME/.config/startship.toml"

if ! grep -qF "$STARSHIP_INIT_LINE" "$FISH_CONFIG_FILE"; then
  echo "$STARSHIP_INIT_LINE" >>"$FISH_CONFIG_FILE"
fi

echo "Configs installed!"
