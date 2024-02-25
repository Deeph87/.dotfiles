-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Dracula'

-- Fallback to left option key usual behavior
config.send_composed_key_when_left_alt_is_pressed = true

-- Font
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 14
config.line_height = 1.2

-- and finally, return the configuration to wezterm
return config

