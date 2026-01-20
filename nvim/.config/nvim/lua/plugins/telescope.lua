return {
    'nvim-telescope/telescope.nvim', 
    version = '*',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        local telescope = require('telescope')
        telescope.setup({
          defaults = {
            preview = {
              hide_on_startup = true
            },
            wrap_results = true,
            sorting_strategy = "ascending",
            layout_strategy = 'horizontal',
            layout_config = {
              width = 0.97,
              height = 0.97
            },
            path_display = { "filename_first" },
            file_ignore_patterns = {
              ".git/"
            },
            mappings = {                                                                                                                                                                  
              i = {                                                                                                                                                                         
                ['<C-p>'] = require('telescope.actions.layout').toggle_preview                                                                                                            
              }                                                                                                                                                                       
            }
          }
        })
        telescope.load_extension('fzf')
    end
}
