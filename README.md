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
sudo apt install -y gh nemo zsh z4h curl wget git lsd brave-browser rofi nitrogen nicotine thunar flatpak
zsh

# Chezmoi
cd ~/.local
sh -c "$(curl -fsLS chezmoi.io/get)"

# z4h
if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
fi

#Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
zsh

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

## Neovim
Install by homebrew to get the newest version

```sh
brew install neovim
cp -r ~/Documents/dotfiles/nevim ~/.config/
zsh
nvim
```

Go in `nvim` to run `:MasonInstallAll` 

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

## Essentials from Homebrew
```sh 
brew install node fd yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font jstkdng/programs/ueberzugpp
```

## Keepassxc
```sh 
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt install keepassxc
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





