local wezterm = require "wezterm"

return {

	-- terminal size setup in terms of defaults
	initial_cols = 80 * 3,
	initial_rows = 24 * 2,

	-- typography
	font = wezterm.font("Iosevka Fixed Slab", {font_size = 12}),
	line_height = 1.15,

	-- colorscheme
	color_scheme = "Gruvbox Dark",
}
