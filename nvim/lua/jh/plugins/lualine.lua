return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'dracula',
      component_separators = '',
      -- section_separators = { left = '', right = '' },
      section_separators = {}
    },
    sections = {
      lualine_c = {
        {
          'filename',
          path = 3
        }
      }
    }
  }
}
