# dotfiles_for_desktop
## Setup
After installing the tools, download the prepared config files.

### WezTerm

```
curl -L https://raw.githubusercontent.com/tamago3keran/dotfiles_for_desktop/main/.wezterm.lua -o $HOME/.wezterm.lua

mkdir .wezterm
curl -L https://raw.githubusercontent.com/tamago3keran/dotfiles_for_desktop/main/.wezterm/background_image.jpeg -o $HOME/.wezterm/background_image.jpeg
```

### Karabiner-Elements

```
mkdir -p $HOME/.config/karabiner
curl -L https://raw.githubusercontent.com/tamago3keran/dotfiles_for_desktop/main/.config/karabiner/karabiner.json -o $HOME/.config/karabiner/karabiner.json
```

### Scripts

```
curl -L https://raw.githubusercontent.com/tamago3keran/dotfiles_for_desktop/main/scripts/setup_for_macos.sh -o $HOME/setup.sh
sh $HOME/setup.sh
```

※ Running the script will restart the computer.
※ Delete the script file after restart.
