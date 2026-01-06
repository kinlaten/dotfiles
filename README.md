# Easily moving Linux installs

[Chezmoi](https://www.chezmoi.io/#what-does-chezmoi-do) helps you manage your personal configuration files (dotfiles, like ~/.gitconfig) across multiple machines.

## Installation

User install `~/.local/bin`

```sh
cd ~/.local
sh -c "$(curl -fsLS chezmoi.io/get)"
```

## configuration

Create new fresh git repo

```sh
gh repo create dotfiles
```

Add git remote to Chezmoi

```sh
chezmoi init https://github.com/<username>/dotfiles
```

## Usage

Add config file to Chezmoi

```sh
chezmoi add .zshrc
```

Now zshrc locate in `~/.local/share/chezmoi/`, so you should directly config it in this directory then use `chezmoi apply` to apply changes

What happens if you edit the “original” file in the home directory? simply merge that change with the working directory with chezmoi merge filename

Then use git to push to remote repo as usual.

# Migrate to new machine

## Install essential packages

```sh
# Packages from Apt
sudo apt install -y gh curl wget git brave-browser rofi flatpak pgcli
bash

# Chezmoi - dotfile manager
cd ~/.local
sh -c "$(curl -fsLS chezmoi.io/get)"

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
zsh

# Some package from Homebrew
brew install node yazi ffmpeg sevenzip jq poppler fzf resvg imagemagick jstkdng/programs/ueberzugpp lazygit tmux

#Github CLI
gh auth login
gh repo list
```

## Migrate config files to new system

```sh
chezmoi init --apply https://github.com/kinlaten/dotfiles.git
```

Replace `kinlaten` as your Github username

## Set user no need passwd to use sudo

```sh
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER
sudo chmod 0440 /etc/sudoers.d/$USER
```

## Vscode

Install deb file from [Vscode Web](https://code.visualstudio.com/)

```sh
cd ~/Downloads/ ; sudo apt install ./cod*.deb
```

## Albert launcher

Install deb package from [opensuse](https://software.opensuse.org/download/package.iframe?project=home:manuelschneid3r&package=albert&acolor=00cccc&hcolor=00aaaa&locale=en)

```sh
cd ~/Downloads/ ; sudo apt install ./alber*.deb
cp -r ~/Documents/dotfiles/albert ~/.config/
```

## Set swap to 16GB

```sh
sudo swapoff --all
sudo rm -rf /swapfile
sudo fallocate -l 16G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
# sudo echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
sudo swapon --show
```

## Config input device

```sh
ed@ed-pc:/etc/X11/xorg.conf.d$ cat 00-keyboard.conf 10-libinput.conf
Section "InputClass"
  Identifier "system-keyboard"
  MatchIsKeyboard "true"
  Option "XkbOptions" "caps:escape_shifted_capslock"
EndSection

Section "InputClass"
        Identifier "Pointer"
        MatchIsPointer "true"
        Driver "libinput"
        Option "LeftHanded" "true"
        Option "Tapping" "true"
        Option "NartualScrolling" "true"
EndSection
```
