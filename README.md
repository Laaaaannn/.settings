## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```


2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:Laaaaannn/.settings.git ~/.settings
```


3. Create symlinks in the Home directory to the real files in the repo.

```zsh
sh link-settings.sh
```


4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Then pass in the Brewfile location...
brew bundle --file ~/.settings/Brewfile
# ...or move to the directory first.
cd ~/.settings && brew bundle
```

## NPM

```
https://github.com/deoxxa/npmrc | npm i npmrc -g 
```
