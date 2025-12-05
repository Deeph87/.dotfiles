-- LOAD PLUGINS
local telescope = require('telescope.builtin')

-- INIT PLUGINS
require('lualine').setup {
  options = { theme  = "catppuccin" }
}

require("catppuccin").setup {
  flavour = "macchiato"
}
vim.cmd.colorscheme "catppuccin"

-- OPTIONS
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true

-- KEYMAPS
vim.keymap.set('n', '<leader>ge', vim.cmd.Ex)
-- telescope
vim.keymap.set('n', '<leader>gn', telescope.find_files, {})
vim.keymap.set('n', '<leader>ls', telescope.buffers, {})

-- vim.pack.add{
--   { src = 'https://github.com/nvim-lua/plenary.nvim' },
--   { src = 'https://github.com/nvim-telescope/telescope.nvim' }
-- }l


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

-- -- Dynamic make file program selector
-- local function match(file, pattern)
--   local startPosition, endPosition = string.find(file, pattern)
--   return startPosition ~= nil and endPosition ~= nil
-- end
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "typescript",
--   callback = function(ev)
--     local file = ev.file
--     -- ts tests files
--     if match(file, "%.spec%.") or match(file, "%.test%.") then
--       print("TS test file : " .. file)
--       vim.cmd("compiler jest | setlocal makeprg=npx\\ jest")
--     else
--       vim.cmd("compiler tsc | setlocal makeprg=npx\\ tsc")
--     end
--   end
-- })

