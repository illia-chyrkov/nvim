local keymap = vim.keymap.set
local silent = { silent = true }

keymap("n", "<C-q>", ":q<CR>", silent)
keymap("i", "<C-q>", "<ESC> :q<CR>", silent)

keymap("n", "<C-s>", ":w<CR>", silent)
keymap("i", "<C-s>", "<ESC> :w<CR>", silent)

keymap('n', '<C-e>', ':NvimTreeToggle<CR>', silent)
keymap('i', '<C-e>', '<ESC> :NvimTreeToggle<CR>', silent)
