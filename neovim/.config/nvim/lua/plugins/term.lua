return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		keys = {
			{ "<leader>tt", "<cmd>ToggleTerm<cr>",                 desc = "Normal terminal" },
			{ "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Float terminal" },
		},
		opts = {
			float_opts = {
				width = 100,
				height = 50,
				border = "curved"
			}
		}
	},
}
