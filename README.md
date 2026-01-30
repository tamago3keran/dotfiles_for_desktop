# dotfiles_for_desktop
## Require
I am a Japanese Web engineer and I develop on a MacBook. I use a US layout keyboard, which I have set up to support Japanese. So I have introduced tools to support Japanese language as well as development.

### WezTerm
My [dotfiles](https://github.com/tamago3keran/dotfiles_for_docker) can not used properly with Terminal.app which is installed by default on Mac. So I recommend using WezTerm.

### Docker
I use Docker for the development.

### Karabiner-Elements
I need the tool because I use Japanese on a MacBook with a US layout keyboard.

### Clipy
I extend the clipboard functionality to improve development efficiency on my MacBook.

## Setup
Install the tools and download the prepared config files.

### Install Tools

```
brew bundle
```

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
