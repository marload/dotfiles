# dotfiles

**Install pre-requirements**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
git clone https://github.com/marload/dotfiles ~/
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