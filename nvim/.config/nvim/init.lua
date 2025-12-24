-- LOAD PLUGINS
require("config.lazy")
local telescope = require('telescope.builtin')

-- KEYMAPS
vim.keymap.set('n', '<leader>ge', vim.cmd.Ex)
vim.keymap.set('n', '<leader><Tab>', vim.cmd.bnext, {desc = 'Next buffer'})
vim.keymap.set('n', '<leader><S-Tab>', vim.cmd.bprev, {desc = 'Previous buffer'})
vim.keymap.set('n', '<leader>tn', vim.cmd.tabnew, {desc = 'Open a new tab page'})
vim.keymap.set('n', '<leader>tc', vim.cmd.tabclose, {desc = 'Close current tab page'})

vim.keymap.set('n', '<leader>ff', function()
  telescope.find_files({
    hidden = true,
    no_ignore = false
  })
end, {desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
-- vim.keymap.set('n', '<leader>db', telescope.delete_buffer, {})
require("catppuccin").setup {
    flavour = "macchiato"
}

vim.cmd.colorscheme "catppuccin"

-- vim.api.nvim_set_option("clipboard", "unnamed")

-- require("jh.core")
-- require("jh.lazy")

-- -- [[ Highlight on yank ]]
-- -- See `:help vim.highlight.on_yank()`
-- local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
-- vim.api.nvim_create_autocmd('TextYankPost', {
--   callback = function()
--     vim.highlight.on_yank()
--   end,
--   group = highlight_group,
--   pattern = '*',
-- })

