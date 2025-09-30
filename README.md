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




