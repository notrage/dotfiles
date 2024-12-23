local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" }, -- Lua formatter
		python = { "black" }, -- Python formatter
		c = { "clang-format" }, -- C formatter
		cpp = { "clang-format" }, -- C++ formatter
		cs = { "clang-format" }, -- C# formatter
		java = { "clang-format" }, -- Java formatter
		javascript = { "prettier" }, -- JavaScript formatter
		html = { "prettier" }, -- HTML formatter
		css = { "prettier" }, -- CSS formatter
		bash = { "shfmt" }, -- Bash formatter
		sh = { "shfmt" }, -- Sh formatter
		tex = { "latexindent" }, -- LaTeX formatter
		markdown = { "prettier" }, -- Markdown formatter
	},
})
