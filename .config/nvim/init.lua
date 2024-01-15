local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
vim.wo.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.g.mapleader = " "
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.number = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.fillchars:append { eob = " " }
vim.opt.cursorline = true -- 현재 커서 라인의 색상을 강조함
vim.wo.relativenumber = true

vim.keymap.set("n", "<leader>w", "<ESC>w<CR>")
vim.keymap.set("n", "<leader>qq", "<ESC>qa<CR>")

-- Terminal 모드에서 'jk'를 Escape 키로 사용
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })


require("lazy").setup("plugins", {
	install = {
		colorscheme = { "nord" },
	},
})
