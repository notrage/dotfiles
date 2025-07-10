require("options")

return {
    -- AESTHETIC FEATURES
    -- Rendering Markdown plugin
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
    -- Code coloration plugin
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "python",
                "bash",
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


    -- Copilot LSP
    -- {
    -- 	"github/copilot.vim",
    -- 	lazy = false,
    -- 	config = function()
    -- 		vim.g.copilot_no_tab_map = true
    -- 		vim.g.copilot_assume_mapped = true
    --            vim.cmd("Copilot disable")
    -- 	end,
    -- },
}
