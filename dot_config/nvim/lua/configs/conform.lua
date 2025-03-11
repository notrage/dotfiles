local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		cs = { "clang-format" },
		java = { "clang-format" },
		javascript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		bash = { "shfmt" },
		sh = { "shfmt" },
		tex = { "latexindent" },
		markdown = { "prettier" },
	},

	formatters = {
		black = {
			command = "black",
			args = { "--line-length", "79", "--fast", "-" },
			timeout_ms = 5000,
		},
	},
})
