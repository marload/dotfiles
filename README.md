# dotfiles

```
cd ~
git clone https://github.com/marload/dotfiles ~/dotfiles
```

```
cd ~
mkdir -p .tmux/plugins

cd ~
ln -s ~/dotfiles/.scripts
ln -s ~/dotfiles/.tmux.conf
ln -s ./dotfiles/tmuxinator

cd ~/.config
ln -s ~/dotfiles/.config/hammerspoon
ln -s ~/dotfiles/.config/nvim

cd ~/.tmux/plugins
ln -s ~/dotfiles/.tmux/plugins/tpm
```