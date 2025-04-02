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
		lazy = false,
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
	-- Copilot LSP
	{
		"github/copilot.vim",
		lazy = false,
		config = function()
			-- vim.keymap.set("i", "<space>F", 'copilot#Accept("\\<CR>")', {
			-- 	expr = true,
			-- 	replace_keycodes = false,
			-- })
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true
		end,
	},
}
