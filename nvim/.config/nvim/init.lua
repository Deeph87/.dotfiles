vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.api.nvim_set_option("clipboard", "unnamed")

require("jh.core")
require("jh.lazy")

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Dynamic make file program selector
local function match(file, pattern)
  local startPosition, endPosition = string.find(file, pattern)
  return startPosition ~= nil and endPosition ~= nil
end
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript",
  callback = function(ev)
    local file = ev.file
    -- ts tests files
    if match(file, "%.spec%.") or match(file, "%.test%.") then
      print("TS test file : " .. file)
      vim.cmd("compiler jest | setlocal makeprg=npx\\ jest")
    else
      vim.cmd("compiler tsc | setlocal makeprg=npx\\ tsc")
    end
  end
})

