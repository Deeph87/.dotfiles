return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function ()
    require("rose-pine").setup({
      variant = "main",
      dark_variant = "main",
      dim_inactive_windows = true,
      extend_background_behind_borders = true,
    })
    vim.cmd.colorscheme("rose-pine-main")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
}
