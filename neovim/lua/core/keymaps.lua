-- KEYMAPS

local key = vim.keymap.set

-- Set leader key as a space bar
vim.g.mapleader = " "


-- NVIM-TREE
key("n", "<C-a>", ":NvimTreeToggle<CR>", full_options)
key("n", "<C-f>", ":NvimTreeFindFile<CR>", full_options)

