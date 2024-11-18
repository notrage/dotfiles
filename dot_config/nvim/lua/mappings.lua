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
local unmap = function(mode, keybind, opts)
	opts = opts or {}
	vim.keymap.del(mode, keybind, opts)
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

-- I don't understand why I can't unmap these shit
map("n", "]d", "]d")
map("n", "g`", "g`")
map("n", "g'", "g'")
map("n", "z=", "z=")
map("n", "<C-L>", "<C-L>")

-- Define individual categories with mappings as lists
local insert_mode_mappings = {
	{ mode = "i", key = "<C-b>", cmd = "<ESC>^i", desc = "Move to beginning of line" },
	{ mode = "i", key = "<C-e>", cmd = "<End>", desc = "Move to end of line" },
	{ mode = "i", key = "<C-h>", cmd = "<Left>", desc = "Move left" },
	{ mode = "i", key = "<C-l>", cmd = "<Right>", desc = "Move right" },
	{ mode = "i", key = "<C-j>", cmd = "<Down>", desc = "Move down" },
	{ mode = "i", key = "<C-k>", cmd = "<Up>", desc = "Move up" },
	{ mode = "i", key = "jk", cmd = "<ESC>", desc = "Exit insert mode" },
	{ mode = "i", key = "<C-R>", cmd = "<C-R>", desc = "Open registers list" },
}

local general_mappings = {
	{ mode = "n", key = "<Esc>", cmd = "<cmd>noh<CR>", desc = "Clear highlights" },
	{ mode = "n", key = "<C-s>", cmd = "<cmd>w<CR>", desc = "Save file" },
	{ mode = "n", key = "<C-c>", cmd = "<cmd>%y+<CR>", desc = "Copy whole file" },
	{ mode = "n", key = ";", cmd = ":", desc = "Enter command mode" },
	{ mode = "n", key = "gx", cmd = "gx", desc = "Open file link" },
	{ mode = "n", key = '"', cmd = '"', desc = "Open registers list" },
}

local toggle_mappings = {
	{ mode = "n", key = "<leader>n", cmd = "<cmd>set nu!<CR>", desc = "Toggle line numbers" },
	{ mode = "n", key = "<leader>rn", cmd = "<cmd>set rnu!<CR>", desc = "Toggle relative line numbers" },
	{
		mode = "n",
		key = "<leader>ch",
		cmd = "<cmd>lua require('custom.cheatsheet').open()<CR>",
		desc = "Toggle Cheatsheet",
	},
}

local buffer_mappings = {
	{
		mode = "n",
		key = "<leader>x",
		cmd = "<cmd>lua require('nvchad.tabufline').close_buffer()<CR>",
		desc = "Close buffer",
	},
	{ mode = "n", key = "<tab>", cmd = "<cmd>lua require('nvchad.tabufline').next()<CR>", desc = "Go to next buffer" },
	{ mode = "n", key = "<C-n>", cmd = "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
	{ mode = "n", key = "<leader>e", cmd = "<cmd>NvimTreeFocus<CR>", desc = "Focus NvimTree" },
}

local telescope_mappings = {
	{ mode = "n", key = "<leader>fw", cmd = "<cmd>Telescope live_grep<CR>", desc = "Live grep" },
	{ mode = "n", key = "<leader>fb", cmd = "<cmd>Telescope buffers<CR>", desc = "Find buffers" },
	{ mode = "n", key = "<leader>fo", cmd = "<cmd>Telescope oldfiles<CR>", desc = "Find old files" },
	{
		mode = "n",
		key = "<leader>fz",
		cmd = "<cmd>Telescope current_buffer_fuzzy_find<CR>",
		desc = "Find in current buffer",
	},
	{ mode = "n", key = "<leader>ff", cmd = "<cmd>Telescope find_files<CR>", desc = "Find files" },
	{
		mode = "n",
		key = "<leader>fa",
		cmd = "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
		desc = "Find all files",
	},
	{ mode = "n", key = "<leader>cm", cmd = "<cmd>Telescope git_commits<CR>", desc = "Git commits" },
	{ mode = "n", key = "<leader>gt", cmd = "<cmd>Telescope git_status<CR>", desc = "Git status" },
	{ mode = "n", key = "<leader>th", cmd = "<cmd>Telescope themes<CR>", desc = "NvChad themes" },
}

local lsp_mappings = {
	{ mode = "n", key = "gd", cmd = "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Go to definition" },
	{ mode = "n", key = "gD", cmd = "<cmd>lua vim.lsp.buf.declaration()<CR>", desc = "Go to declaration" },
	{ mode = "n", key = "gr", cmd = "<cmd>lua vim.lsp.buf.references()<CR>", desc = "Show references list" },
	{ mode = "n", key = "<leader>r", cmd = "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "Rename symbol" },
	{ mode = "n", key = "<leader>fm", cmd = "<cmd>lua require('conform').format()<CR>", desc = "Format file" },
}

-- Now, gather all the categories in a single global list for easy iteration
local mappings = {
	insert_mode = insert_mode_mappings,
	general = general_mappings,
	toggle = toggle_mappings,
	buffer = buffer_mappings,
	telescope = telescope_mappings,
	lsp = lsp_mappings,
}

-- Loop through all mappings and set them
for _, category in pairs(mappings) do
	for _, map_data in ipairs(category) do
		map(map_data.mode, map_data.key, map_data.cmd, { desc = map_data.desc })
	end
end

-- Return the mappings table if needed elsewhere, such as for a cheatsheet
return mappings

-- -- MAPPING MY OWN KEYS
-- -- Insert mode mappings
-- map("i", "<C-b>", "<ESC>^i", { desc = "Move to beginning of line" })
-- map("i", "<C-e>", "<End>", { desc = "Move to end of line" })
-- map("i", "<C-h>", "<Left>", { desc = "Move left" })
-- map("i", "<C-l>", "<Right>", { desc = "Move right" })
-- map("i", "<C-j>", "<Down>", { desc = "Move down" })
-- map("i", "<C-k>", "<Up>", { desc = "Move up" })
--
-- -- General (n)
-- map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })
-- map("n", "<C-s>", "<cmd>w<CR>", { desc = "General Save file" })
-- map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "General Copy whole file" })
-- map("n", ";", ":", { desc = "General Enter command mode" })
-- map("n", "gx", "gx", { desc = "General Open file link" })
-- map("n", '"', '"', { desc = "General Open registers list" })
-- -- Conform
-- map("n", "<leader>fm", "<cmd>lua require('conform').format()<CR>", { desc = "General Format file" })
--
-- -- General (i)
-- map("i", "jk", "<ESC>", { desc = "General Exit insert mode" })
-- map("i", "<C-R>", "<C-R>", { desc = "General Open registers list" })
--
-- -- General (x)
-- map("x", "gx", "gx", { desc = "General Open file link" })
--
-- -- Toggle (n)
-- map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle Line numbers" })
-- map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative line numbers" })
-- map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle Cheatsheet" })
-- map("n", "<leader>/", "gcc", { desc = "Toggle Comment" })
--
-- -- Toggle (x)
-- map("x", "<leader>/", "gc", { desc = "Toggle comment" })
--
--
-- -- Buffer / NvimTree (n)
-- map("n", "<leader>x", "<cmd>lua require('nvchad.tabufline').close_buffer()<CR>", { desc = "Buffer Close buffer" })
-- map("n", "<tab>", "<cmd>lua require('nvchad.tabufline').next()<CR>", { desc = "Buffer Go to next buffer" })
-- map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Buffer Toggle NvimTree" })
-- map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Buffer Focus NvimTree" })
--
-- -- Telescope (n)
-- map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })
-- map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })
-- map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope Find oldfiles" })
-- map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope Find in current buffer" })
-- map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
-- map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
-- map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })
-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope Find files" })
-- map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", { desc = "Telescope Find all files (hidden files)" })
--
-- -- LSP Config (n)
-- map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "LSP Go to definition" })
-- map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "LSP Go to declaration" })
-- -- map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { desc = "LSP Go to implementation" })
-- map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "LSP Show references list" })
-- map('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', { desc = "LSP Rename Symbol" })
--
-- -- Sourrounding
-- -- map("n", "yss", )
