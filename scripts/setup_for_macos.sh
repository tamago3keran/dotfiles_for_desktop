#!/bin/bash

## Set config directory with XDG support
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

## Create directories
mkdir -p "$XDG_CONFIG_HOME/wezterm"
mkdir -p "$XDG_CONFIG_HOME/karabiner"
mkdir -p "$XDG_CONFIG_HOME/mise"

## Download configuration files
REPO_URL="https://raw.githubusercontent.com/tamago3keran/dotfiles_for_desktop/main"

curl -L "${REPO_URL}/.config/wezterm/wezterm.lua" -o "$XDG_CONFIG_HOME/wezterm/wezterm.lua"
curl -L "${REPO_URL}/.config/wezterm/background_image.jpeg" -o "$XDG_CONFIG_HOME/wezterm/background_image.jpeg"
curl -L "${REPO_URL}/.config/karabiner/karabiner.json" -o "$XDG_CONFIG_HOME/karabiner/karabiner.json"
curl -L "${REPO_URL}/.zshrc" -o "$HOME/.zshrc"
curl -L "${REPO_URL}/Brewfile" -o "$HOME/Brewfile"
curl -L "${REPO_URL}/.config/mise/config.toml" -o "$XDG_CONFIG_HOME/mise/config.toml"

## Install Homebrew and packages
if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [[ "$(uname -m)" == "arm64" ]]; then # Apple Silicon
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else # Intel
        eval "$(/usr/local/bin/brew shellenv)"
    fi
fi

brew bundle --file="$HOME/Brewfile"

## Setup mise and install tools
if command -v mise >/dev/null 2>&1; then
    eval "$(mise activate zsh)"
    mise install -y
fi

## macOS system settings
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock tilesize -int 16
killall Dock

defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false
killall cfprefsd

defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 20

echo "Setup complete. Please reboot your Mac to apply all changes."
