# dotfiles

**Install pre-requirements**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
git clone https://github.com/marload/dotfiles ~/dotfiles
brew install stow make
```

**Set dotfiles**
```
cd ~/dotfiles
make
```

**Install applications**
```bash
brew update
xargs brew install < ~/dotfiles/brew.requirements.txt
```

**Change to fish**
```
sudo sh ~/chsh_to_fish.sh
```

**Install TPM***
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
