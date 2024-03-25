.PHONY: apps

all: apps

apps:
	@stow fish
	@stow git
	@stow hammerspoon
	@stow neovim
	@stow starship
	@stow tmuxinator
	@stow wezterm