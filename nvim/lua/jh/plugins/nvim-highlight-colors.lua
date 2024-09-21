return {
  "brenoprata10/nvim-highlight-colors",
  config = function ()
    local nvimHighlightColors = require("nvim-highlight-colors");
    require("nvim-highlight-colors").setup();
    nvimHighlightColors.turnOn();
  end
}
