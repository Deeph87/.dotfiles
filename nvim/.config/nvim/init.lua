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

--nvim-treesitter
require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  -- install_dir = vim.fn.stdpath('data') .. '/site'
  install_dir = vim.fn.stdpath('data') .. '/site',
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript", "scala", "python" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  }
}
-- require'nvim-treesitter'.install { 'query', 'markdown', 'markdown_inline', 'lua', 'vim', 'vimdoc', 'javascript', 'typescript', 'scala' }

-- vim.api.nvim_create_autocmd('FileType', {
  --pattern = { 'js', 'lua' },
  --callback = function() vim.treesitter.start() end,
--})

-- require'nvim-treesitter.configs'.setup {
--   install_dir = vim.fn.stdpath('data') .. '/site',
--   ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "typescript", "scala" },
--   sync_install = false,
--   auto_install = true,
--   highlight = {
--     enable = true,
--     additional_vim_regex_highlighting = false,
--   },
-- }

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

