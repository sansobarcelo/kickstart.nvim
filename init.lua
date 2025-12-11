vim.g.mapleader = " "
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.scrolloff = 8
vim.o.wrap = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.diagnostic.config({ virtual_text = true})

-- plugins
vim.pack.add({
	{ src = "https://github.com/rose-pine/neovim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
})

require("mason").setup()
require("mason-lspconfig").setup({
  automatic_enable = true,
  ensure_installed = { "lua_ls" },
})

require("rose-pine").setup({
	styles = {
		bold = false,
		italic = true,
		transparency = true,
	}
})

