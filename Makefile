.PHONY: apps

all: apps

apps:
	@stow fish
	@stow git
	@stow hammerspoon
	@neovim
	@starship
	@tmuxinator
