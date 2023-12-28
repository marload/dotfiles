local theme = require "plugins.theme"
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
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
		"ahmedkhalf/project.nvim",
		opts = {
			manual_mode = true,
		},
		event = "VeryLazy",
		config = function(_, opts)
			require("project_nvim").setup(opts)
			require("lazyvim.util").on_load("telescope.nvim", function()
				require("telescope").load_extension("projects")
			end)
		end,
		keys = {
			{ "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
		},
	}
}
