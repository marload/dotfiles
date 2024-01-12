local theme = require "plugins.theme"
return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			pickers = {
				find_files = {
					theme = "dropdown",
				}
			}
		},
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help tags" },
		},
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{
		"camgraff/telescope-tmux.nvim"
	}
}
