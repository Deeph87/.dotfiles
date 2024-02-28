local wezterm = require 'wezterm'
local mux = wezterm.mux
local action = wezterm.action

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.95
config.color_scheme = 'Dracula'

-- Fallback to left option key usual behavior
config.send_composed_key_when_left_alt_is_pressed = true

config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 15
config.line_height = 1.1


-- KEYBINDINGS

-- Show which key table is active in the status area
wezterm.on('update-right-status', function(window, pane)
  local name = window:active_key_table()
  if name then
    name = 'TABLE: ' .. name
    window:set_right_status(name or '')
  end
  local leader = ''
  if window:leader_is_active() then
    leader = 'LEADER'
    window:set_right_status(leader or '')
  end
end)

config.leader = { key = 'b', mods = 'CTRL' }

config.keys = {
  {
    key = 'r',
    mods = 'LEADER',
    action = action.ActivateKeyTable {
      name = 'resize_pane',
      one_shot = false,
    },
  },
  {
    key = 'g',
    mods = 'LEADER',
    action = action.ActivateKeyTable {
      name = 'activate_pane',
      timeout_milliseconds = 5000,
    },
  },
  {key = "s", mods = "LEADER", action=action{SplitVertical={domain="CurrentPaneDomain"}}},
  {key = "v", mods = "LEADER", action=action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  {key = 't', mods = "LEADER", action=action.SpawnTab 'CurrentPaneDomain'},
  {key = 'x', mods = 'LEADER', action = wezterm.action.CloseCurrentPane { confirm = true }},
  {key = "1", mods = "LEADER", action=action{ActivateTab=0}},
  {key = "2", mods = "LEADER", action=action{ActivateTab=1}},
  {key = "3", mods = "LEADER", action=action{ActivateTab=2}},
  {key = "4", mods = "LEADER", action=action{ActivateTab=3}},
  {key = "5", mods = "LEADER", action=action{ActivateTab=4}},
  {key = "6", mods = "LEADER", action=action{ActivateTab=5}},
  {key = "7", mods = "LEADER", action=action{ActivateTab=6}},
  {key = "8", mods = "LEADER", action=action{ActivateTab=7}},
  {key = "9", mods = "LEADER", action=action{ActivateTab=8}},
  {key = 'X', mods = 'LEADER', action = wezterm.action.CloseCurrentTab { confirm = true }},
  {key = 'n', mods = 'LEADER', action=action.SpawnWindow},
}

config.key_tables = {
  resize_pane = {
    { key = 'LeftArrow', action = action.AdjustPaneSize { 'Left', 1 } },
    { key = 'h', action = action.AdjustPaneSize { 'Left', 1 } },

    { key = 'RightArrow', action = action.AdjustPaneSize { 'Right', 1 } },
    { key = 'l', action = action.AdjustPaneSize { 'Right', 1 } },

    { key = 'UpArrow', action = action.AdjustPaneSize { 'Up', 1 } },
    { key = 'k', action = action.AdjustPaneSize { 'Up', 1 } },

    { key = 'DownArrow', action = action.AdjustPaneSize { 'Down', 1 } },
    { key = 'j', action = action.AdjustPaneSize { 'Down', 1 } },
    { key = 'Escape', action = 'PopKeyTable' },
  },
  activate_pane = {
    { key = 'LeftArrow', action = action.ActivatePaneDirection 'Left' },
    { key = 'h', action = action.ActivatePaneDirection 'Left' },

    { key = 'RightArrow', action = action.ActivatePaneDirection 'Right' },
    { key = 'l', action = action.ActivatePaneDirection 'Right' },

    { key = 'UpArrow', action = action.ActivatePaneDirection 'Up' },
    { key = 'k', action = action.ActivatePaneDirection 'Up' },

    { key = 'DownArrow', action = action.ActivatePaneDirection 'Down' },
    { key = 'j', action = action.ActivatePaneDirection 'Down' },
  }
}

return config
