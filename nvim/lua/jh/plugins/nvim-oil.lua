return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
    local oil = require('oil');
    oil.setup({
      default_file_explorer = true,
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
      skip_confirm_for_simple_edits = true,
    })
  end
}
