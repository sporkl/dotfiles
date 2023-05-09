local wezterm = require "wezterm"

local config = {}

-- terminal size setup in terms of defaults
config.initial_cols = 80 * 3
config.initial_rows = 24 * 2

-- typography
config.font = wezterm.font("Iosevka Fixed Slab")
config.line_height = 1.15
config.font_size = 12

-- color scheme
config.color_scheme = "GruvboxDark"

return config
