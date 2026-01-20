-- LOAD PLUGINS
require("config.lazy")
local telescope = require('telescope.builtin')
local opts = { noremap=true, silent=true }

-- KEYMAPS
vim.keymap.set('n', '<leader>ge', vim.cmd.Ex)
vim.keymap.set('n', '<leader><Tab>', vim.cmd.bnext, vim.tbl_extend("force", opts, { desc = 'Next buffer' }))
vim.keymap.set('n', '<leader><S-Tab>', vim.cmd.bprev, vim.tbl_extend("force", opts, { desc = 'Previous buffer' }))
vim.keymap.set('n', '<leader>tn', vim.cmd.tabnew, vim.tbl_extend("force", opts, {desc = 'Open a new tab page'}))
vim.keymap.set('n', '<leader>tc', vim.cmd.tabclose, vim.tbl_extend("force", opts, {desc = 'Close current tab page'}))

-- Navigation
vim.keymap.set('n', 'K', vim.lsp.buf.hover, vim.tbl_extend("force", opts, {desc = 'Type basique'}))
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, vim.tbl_extend("force", opts, {desc = 'Signature'}))
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, vim.tbl_extend("force", opts, {desc = 'Définition type'}))
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, vim.tbl_extend("force", opts, {desc = 'Définition var'}))
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, vim.tbl_extend("force", opts, {desc = 'Implémentation'}))
vim.keymap.set('n', 'gr', telescope.lsp_references, vim.tbl_extend("force", opts, {desc = 'Références'}))
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded", -- Rend la bordure de la popup arrondie
})

vim.keymap.set('n', '<leader>ff', function()
  telescope.find_files({
    hidden = true,
    no_ignore = false
  })
end, {desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
-- vim.keymap.set('n', '<leader>db', telescope.delete_buffer, {})
vim.keymap.set('n', '<leader>fk', telescope.keymaps, { desc = 'Find keymaps' })
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

vim.lsp.enable({'metals', 'ts_ls', 'lua_ls', 'pylsp'})
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

