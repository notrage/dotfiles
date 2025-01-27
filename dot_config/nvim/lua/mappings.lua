-- I don't want anymore the base mappings of NvChad
-- require("nvchad.mappings")

-- Define the map function using vim.api.nvim_set_keymap
local map = function(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = true
	opts.silent = opts.silent ~= false -- Default to true for silent if not explicitly set to false
	vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- Define an `unmap` function to simplify key unmapping
local unmap = function(mode, keybind)
    vim.keymap.set(mode, keybind, '<nop>', { noremap = true, silent = true })
end

-- REMOVING ALL CURRENT UNWANTED DEFAULT MAPPINGS
unmap("x", "#")
unmap("n", "&")
unmap("x", "*")
unmap("n", "<C-L>")
unmap("x", "@")
unmap("x", "Q")
unmap("n", "Y")
unmap("n", "[d")
unmap("i", "<C-W>")
unmap("i", "<C-U>")
unmap("n", "<C-W><C-D>")
unmap("n", "<C-W>d")
unmap("n", '"')
unmap("n", "'")
unmap("n", "`")
unmap("n", "<tab>")
unmap("t", "<tab>")
unmap("n", "<space>")
unmap("o", "gc")
unmap("n", "]d", "]d")
unmap("n", "g`", "g`")
unmap("n", "g'", "g'")
unmap("n", "<C-L>", "<C-L>")

-- Define individual categories with mappings as lists
local insert_mode_mappings = {
	{ mode = "i", key = "<C-b>", cmd = "<ESC>^i",
        desc = "Move to beginning of line" },
	{ mode = "i", key = "<C-e>", cmd = "<End>", desc = "Move to end of line" },
	{ mode = "i", key = "<C-h>", cmd = "<Left>", desc = "Move left" },
	{ mode = "i", key = "<C-l>", cmd = "<Right>", desc = "Move right" },
	{ mode = "i", key = "<C-j>", cmd = "<Down>", desc = "Move down" },
	{ mode = "i", key = "<C-k>", cmd = "<Up>", desc = "Move up" },
	{ mode = "i", key = "jk", cmd = "<ESC>", desc = "Exit insert mode" },
	{ mode = "i", key = "<C-R>", cmd = "<C-R>", desc = "Open registers list" },
}

local general_mappings = {
	{ mode = "n", key = "<Esc>", cmd = "<cmd>noh<CR>",
        desc = "Clear highlights" },
	{ mode = "n", key = "<C-s>", cmd = "<cmd>w<CR>", desc = "Save file" },
	{ mode = "n", key = "<C-c>", cmd = "<cmd>%y*<CR>",
        desc = "Copy whole file" },
	{ mode = "n", key = "<C-a>", cmd = "gg0vG$",
        desc = "Select all file content" },
	{ mode = "n", key = ";", cmd = ":", desc = "Enter command mode" },
	{ mode = "n", key = "gx", cmd = "gx", desc = "Open file link" },
	{ mode = "n", key = '"', cmd = '"', desc = "Open registers list" },
	{ mode = "n", key = "#", cmd = "#", desc = "Search for next occurence" },
    { mode = "n", key = "<C-i>",
        cmd = "<cmd>lua require('nvchad.term').toggle { pos = 'float', id = 'floatTerm' }<CR>",
        desc = "terminal toggleable horizontal term" },
    { mode = "t", key = "<C-i>",
        cmd = "<cmd>lua require('nvchad.term').toggle { pos = 'float', id = 'floatTerm' }<CR>",
        desc = "terminal toggleable floating terminal" },
}

local toggle_mappings = {
	{ mode = "n", key = "<leader>n", cmd = "<cmd>set nu!<CR>",
        desc = "Toggle line numbers" },
	{ mode = "n", key = "<leader>rn", cmd = "<cmd>set rnu!<CR>",
        desc = "Toggle relative line numbers" },
	{ mode = "n", key = "<leader>ch",
        cmd = "<cmd>lua require('custom.cheatsheet').open()<CR>",
        desc = "Toggle Cheatsheet" },
	{ mode = "n", key = "<leader>sl", cmd = "z=", desc = "Toggle spell check" },
	{ mode = "s", key = "gcc", cmd = "gcc", desc = "Toggle comment line" },
	{ mode = "s", key = "gc", cmd = "gc", desc = "Toggle comment line" },
}

local buffer_mappings = {
	{ mode = "n", key = "<leader>x",
        cmd = "<cmd>lua require('nvchad.tabufline').close_buffer()<CR>",
        desc = "Close buffer" },
	{ mode = "n", key = "<tab>",
	       cmd = "<cmd>lua require('nvchad.tabufline').next()<CR>",
	       desc = "Go to next buffer" },
    { mode = "n", key = "<S-tab>",
        cmd = "<cmd>lua require('nvchad.tabufline').prev()<CR>",
        desc = "Go to prev buffer" },
	{ mode = "n", key = "<C-n>", cmd = "<cmd>NvimTreeToggle<CR>",
        desc = "Toggle NvimTree" },
	{ mode = "n", key = "<leader>e", cmd = "<cmd>NvimTreeFocus<CR>",
        desc = "Focus NvimTree" },
	{ mode = "n", key = "<C-h>", cmd = "<C-w>h", desc = "Move to left window" },
	{ mode = "n", key = "<C-l>", cmd = "<C-w>l",
        desc = "Move to right window" },
	{ mode = "n", key = "<C-left>", cmd = "<C-w>h",
        desc = "Move to left window" },
	{ mode = "n", key = "<C-right>", cmd = "<C-w>l",
        desc = "Move to right window" },
}

local telescope_mappings = {
	{ mode = "n", key = "<leader>fw", cmd = "<cmd>Telescope live_grep<CR>",
        desc = "Live grep" },
	{ mode = "n", key = "<leader>fb", cmd = "<cmd>Telescope buffers<CR>",
        desc = "Find buffers" },
	{ mode = "n", key = "<leader>fo", cmd = "<cmd>Telescope oldfiles<CR>",
        desc = "Find old files" },
	{ mode = "n", key = "<leader>fz",
        cmd = "<cmd>Telescope current_buffer_fuzzy_find<CR>",
        desc = "Find in current buffer" },
	{ mode = "n", key = "<leader>ff", cmd = "<cmd>Telescope find_files<CR>",
        desc = "Find files" },
	{ mode = "n", key = "<leader>fa",
        cmd = "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
        desc = "Find all files (hidden)" },
	{ mode = "n", key = "<leader>cm", cmd = "<cmd>Telescope git_commits<CR>",
        desc = "Git commits" },
	{ mode = "n", key = "<leader>gt", cmd = "<cmd>Telescope git_status<CR>",
        desc = "Git status" },
	{ mode = "n", key = "<leader>th", cmd = "<cmd>Telescope themes<CR>",
        desc = "NvChad themes" },
}

local nvim_tree_mappings = {
    { mode = "s", key = "<CR>", cmd = "<CR>", desc = "Open file" },
    { mode = "s", key = "<CR>", cmd = "<CR>",
        desc = "Expand/Collapse directory" },
    { mode = "s", key = "a", cmd = "a", desc = "Create file" },
    { mode = "s", key = "d", cmd = "d", desc = "Delete file" },
    { mode = "s", key = "r", cmd = "r", desc = "Rename file" },
    { mode = "s", key = "c", cmd = "c", desc = "Copy file" },
    { mode = "s", key = "p", cmd = "p", desc = "Paste file" },
    { mode = "s", key = "x", cmd = "x", desc = "Cut file" },
    { mode = "s", key = "y", cmd = "y", desc = "Copy filename" },
    { mode = "s", key = "Y", cmd = "Y", desc = "Copy relative file path" },
    { mode = "s", key = "gy", cmd = "gy", desc = "Copy file absolute path" },
}

local lsp_mappings = {
	{ mode = "n", key = "gd", cmd = "<cmd>lua vim.lsp.buf.definition()<CR>",
        desc = "Go to definition" },
	{ mode = "n", key = "gD", cmd = "<cmd>lua vim.lsp.buf.declaration()<CR>",
        desc = "Go to declaration" },
	{ mode = "n", key = "gr", cmd = "<cmd>lua vim.lsp.buf.references()<CR>",
        desc = "Show references list" },
	{ mode = "n", key = "<leader>r", cmd = "<cmd>lua vim.lsp.buf.rename()<CR>",
        desc = "Rename symbol" },
	{ mode = "n", key = "<leader>fm",
        cmd = "<cmd>lua require('conform').format()<CR>", desc = "Format file" },
}

-- Now, gather all the categories in a single global list for easy iteration
local mappings = {
	insert_mode = insert_mode_mappings,
	general = general_mappings,
	toggle = toggle_mappings,
	buffer = buffer_mappings,
	telescope = telescope_mappings,
    nvim_tree = nvim_tree_mappings,
	lsp = lsp_mappings,
}

-- Loop through all mappings and set them
-- for _, category in pairs(mappings) do
-- 	for _, map_data in ipairs(category) do
-- 		-- Checking if the mapping should be skipped
-- 		if map_data.mode ~= "s" then
-- 			map(map_data.mode, map_data.key, map_data.cmd, { desc = map_data.desc })
-- 		end
-- 	end
-- end

-- Return the mappings table if needed elsewhere, such as for a cheatsheet
return mappings
