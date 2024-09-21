return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
  config = function()
    vim.defer_fn(function()
      require('nvim-treesitter.configs').setup {
        ensure_installed={
          'lua',
          'python',
          'javascript',
          'typescript',
          'vimdoc',
          'vim',
          'bash',
          'scala',
          'yaml'
        },
        auto_install = false,
        sync_install = false,
        ignore_install = {},
        modules = {},
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false
        },
        indent = { enable = true },
      }
    end, 0)
  end
}
