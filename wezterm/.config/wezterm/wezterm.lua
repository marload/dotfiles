local wezterm = require 'wezterm';

local wezterm = require("wezterm")
return {
	font = wezterm.font {
		family = "CaskaydiaMono Nerd Font",
		harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	},
	color_scheme = 'One Dark (Gogh)',
	font_size = 12.0,
	check_for_updates = false,
	warn_about_missing_glyphs = false,
	use_ime = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
}
