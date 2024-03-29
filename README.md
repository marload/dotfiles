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
sudo sh ~/dotfiles/chsh_to_fish.sh
sudo chsh -s $(which fish)
fisher install < ~/dotfiles/fisher.requirements.txt
```

**Install Krew**
```
begin
  set -x; set temp_dir (mktemp -d); cd "$temp_dir" &&
  set OS (uname | tr '[:upper:]' '[:lower:]') &&
  set ARCH (uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/') &&
  set KREW krew-$OS"_"$ARCH &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/$KREW.tar.gz" &&
  tar zxvf $KREW.tar.gz &&
  ./$KREW install krew &&
  set -e KREW temp_dir &&
  cd -
end
```

**Install TPM***
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

**Hold key**
```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```


