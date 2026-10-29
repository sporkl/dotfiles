
local wezterm = require "wezterm"

local config = wezterm.config_builder()

-- STYLE

config.font_size = 14
config.font = wezterm.font("IosevkaTermSlab NFM Medium")
config.font_rules = {
  { font = wezterm.font("IosevkaTermSlab NFM Medium") },
}
config.harfbuzz_features = {'calt=0', 'clig=0', 'liga=0'} -- no ligatures

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return "Light"
end

function scheme_for_appearance(appearance)
  if appearance:find "Light" then
    return "Gruvbox (Gogh)"
  else
    return "Gruvbox Dark (Gogh)"
  end
end

config.color_scheme = scheme_for_appearance(get_appearance())

-- GUI CUSTOMIZATIONS

config.hide_tab_bar_if_only_one_tab = true

-- start full screen
wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
  -- window:gui_window():perform_action(wezterm.action.ToggleFullScreen, pane)
	window:gui_window():maximize()
end)

return config
