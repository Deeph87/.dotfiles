-- OPTIONS
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.opt.shiftwidth = 4

-- LOAD PLUGINS
require("config.lazy")
local telescope = require('telescope.builtin')

-- INIT PLUGINS
require('lualine').setup {
    options = { theme  = "catppuccin" }
}

-- KEYMAPS
vim.keymap.set('n', '<leader>ge', vim.cmd.Ex)
vim.keymap.set('n', '<leader><Tab>', vim.cmd.bnext, {desc = 'Next buffer'})
vim.keymap.set('n', '<leader><S-Tab>', vim.cmd.bprev, {desc = 'Previous buffer'})

-- telescope
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
-- vim.keymap.set('n', '<leader>db', telescope.delete_buffer, {})
require("catppuccin").setup {
    flavour = "macchiato"
}
vim.cmd.colorscheme "catppuccin"

--nvim-treesitter
require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}
-- require'nvim-treesitter'.install { 'query', 'markdown', 'markdown_inline', 'lua', 'vim', 'vimdoc', 'javascript', 'typescript', 'scala' }

-- vim.api.nvim_create_autocmd('FileType', {
  --pattern = { 'js', 'lua' },
  --callback = function() vim.treesitter.start() end,
--})

--require'nvim-treesitter.configs'.setup {
  --ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript", "scala" },
  --sync_install = false,
  --auto_install = false,
  --highlight = {
    --enable = true,
    --additional_vim_regex_highlighting = false,
  --},
--}

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

