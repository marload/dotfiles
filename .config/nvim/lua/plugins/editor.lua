return {
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",

	-- 	keys = {
	-- 		{ "<leader>e", "<cmd>Neotree toggle<cr>" },
	-- 	},

	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	-- 		"MunifTanjim/nui.nvim",
	-- 		"3rd/image.nvim",           -- Optional image support in preview window: See `# Preview Mode` for more information
	-- 	}

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<cr>" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				window = {
					width = 30,
				},
				buffers = {
					follow_current_file = {
						enabled = true,
					},
				},
				filesystem = {
					follow_current_file = {
						enabled = true,
					},
					filtered_items = {
						hide_dotfiles = false,
						hide_gitignored = false,
						hide_by_name = {
							"node_modules"
						},
						never_show = {
							".DS_Store",
							"thumbs.db"
						},
					},
				},
			})
		end
	},
	{
		'stevearc/oil.nvim',
		keys = {
			{ "<leader>oo", "<cmd>Oil --float<cr>" },
		},
		opts = {
			float = {
				padding = 2,
				max_width = 60,
				max_height = 40,
				border = "rounded",
				win_options = {
					winblend = 10,
				},
			},
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "tpope/vim-commentary" },
	{
		"karb94/neoscroll.nvim",
		event = "WinScrolled",
		config = function()
			require('neoscroll').setup({
				-- All these keys will be mapped to their corresponding default scrolling animation
				mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
					'<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
				hide_cursor = true,      -- Hide cursor while scrolling
				stop_eof = true,         -- Stop at <EOF> when scrolling downwards
				use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
				respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
				cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
				easing_function = nil,   -- Default easing function
				pre_hook = nil,          -- Function to run before the scrolling animation starts
				post_hook = nil,         -- Function to run after the scrolling animation ends
			})
		end
	},
	{
		"echasnovski/mini.bufremove",
		-- stylua: ignore
		keys = {
			{ "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
			{ "<leader>bD", function() require("mini.bufremove").delete(0, true) end,  desc = "Delete Buffer (Force)" },
		},
	},
	{
		"folke/trouble.nvim",
		cmd = { "TroubleToggle", "Trouble" },
		opts = { use_diagnostic_signs = true },
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		vscode = true,
		---@type Flash.Config
		opts = {
			search = {
				multi_window = false,
			},
			modes = {
				search = {
					enabled = false,
				},
				char = {
					enabled = false,
				},
			},
		},
		-- stylua: ignore
		keys = {
			{ "f", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
			{ "F", mode = { "n", "o", "x" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
			{ "r", mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
			{ "R", mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
		},
	}
}
