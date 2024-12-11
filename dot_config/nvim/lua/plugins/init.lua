require("options")

return {
	-- AESTHETIC FEATURES
	-- Code coloration plugin
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"html",
				"css",
				"python",
				"c",
				"cpp",
				"latex",
				"java",
				"javascript",
				-- add there any supported language
			},
		},
	},
	-- Embedded context display plugin
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = { "BufNewFile", "BufReadPost" },
		opts = { mode = "topline", max_lines = 5 },
	},
	-- LSP server installer plugin
	{
		"williamboman/mason.nvim",
		automatic_installation = true,
	},
	-- LSP server plugin for jumps, rename and autocomplete
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	-- IMPROVEMENT CODE FEATURES
	-- Code formatters plugin
	{
		"stevearc/conform.nvim",
		lazy = false, -- Ensure it's not loaded lazily
		config = function()
			require("configs.conform")
		end,
	},
	-- Additionnal autocomplete plugins
	{
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
	},
	-- Code deplacements plugin
	{
		"ggandor/leap.nvim",
		init = function()
			require("configs.leap")
		end,
		dependencies = {
			"tpope/vim-repeat",
		},
		lazy = false,
	},

    -- DON'T NEED OF THIS ATM
	-- -- Surrounding plugin
	-- {
	-- 	"kylechui/nvim-surround",
	-- 	version = "*",
	-- 	event = "VeryLazy",
	-- 	opts = {},
	-- },
	-- -- GitHub Copilot plugin
	-- {
	-- 	"github/copilot.vim",
	-- 	lazy = false, -- Ensure it's not loaded lazily
	-- 	config = function()
	-- 		vim.g.copilot_no_tab_map = true -- Disable default <Tab> mapping
	-- 		vim.api.nvim_set_keymap("i", "<leader><Tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
	-- 	end,
	-- },
	-- -- Copilot Chat plugin
	-- {
	-- 	"CopilotC-Nvim/CopilotChat.nvim",
	-- 	lazy = false,
	-- 	branch = "canary",
	-- 	dependencies = {
	-- 		{ "github/copilot.vim" },
	-- 		{ "nvim-lua/plenary.nvim" },
	-- 	},
	-- 	build = "make tiktoken", -- Only on MacOS or Linux
	-- 	opts = {},
	-- },
}
