local wezterm = require "wezterm"

local keybind = require "keybinds"

return {
  font = wezterm.font("HackGen Console NF"),
  font_size = 16,

  color_scheme = "One Light (base16)",
  window_background_opacity = 1,

  disable_default_key_bindings = true,
  keys = keybind.keys,
  key_tables = keybind.key_tables,
  leader = { key = "t", mods = "CTRL", timeout_milliseconds = 2000 },
}

