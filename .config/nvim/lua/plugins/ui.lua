return {
	{
		"nvim-lualine/lualine.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			globalstatus = true,
			options = {
				theme = "nord"
			}
		}
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim',
			'nvim-tree/nvim-web-devicons',
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- animation = true,
			-- insert_at_start = true,
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = { enabled = true },
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"Trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
					"lazyterm",
					"nvim-tree",
				},
			},
		},
	},
	{
		"echasnovski/mini.indentscope",
		opts = {
			symbol = "│",
			draw = { delay = 0 },
			options = { try_as_border = true },
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
	{
		'petertriho/nvim-scrollbar',
	},
	{
		"stevearc/dressing.nvim",
		lazy = true,
		opts = {
			input = {
				win_options = {
					winhighlight = 'FloatBorder:DiagnosticError'
				}
			}
		}
	},
	{
		'christoomey/vim-tmux-navigator'
	},
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		}
	},
}
