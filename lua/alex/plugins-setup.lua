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

vim.g.mapleader = " "

require("lazy").setup({
	-- Theme
  --{
    --"hachy/eva01.vim",
    --branch = "main",
    --lazy = false,
    --opts = {},
  --},
  --{
    --"ellisonleao/gruvbox.nvim",
    --lazy = false,
    --opts = {},
  --},
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

	-- Mover el cursor
	"phaazon/hop.nvim",

	-- Navegar entre tabs
	"christoomey/vim-tmux-navigator",

	-- Navegador de archivos
	"nvim-lua/plenary.nvim",
	"junegunn/fzf",
	{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	-- Navegador de archivos lateral
	"nvim-tree/nvim-tree.lua",

	-- Usar Git en Neovim
	"tpope/vim-fugitive",
	"mhinz/vim-signify",

	-- Comenta las líneas seleccionadas
	"scrooloose/nerdcommenter",

	-- Muestra las marcas del buffer
	"kshenoy/vim-signature",

	-- Multicursor (aprendiendo...)
	{ "mg979/vim-visual-multi", branch = "master" },

	-- Encierra a una variable (aprendiendo)
	"tpope/vim-surround",

	-- yw to copy grw to paste ej: Para pegar se borra el contenido si lo quieres pegar más de una vez
	"vim-scripts/ReplaceWithRegister",

	-- Icons!!
	"nvim-tree/nvim-web-devicons",

	-- LineBar
	"nvim-lualine/lualine.nvim",

	-- Autocomplete
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",

	-- Snippets
	{
		"L3MON4D3/LuaSnip",
		version = "2.*",
		build = "make install_jsregexp",
	},
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- managin & installing lsp servers, linters & formatters
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	-- Configuring lsp servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
	}, -- enhanced lsp uis
	"jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

  {
    'stevearc/conform.nvim',
    opts = {},
  },

	-- treesitter configuration
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},

	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	-- Indent line
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
})
