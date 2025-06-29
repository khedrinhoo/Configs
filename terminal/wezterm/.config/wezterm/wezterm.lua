local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- color_scheme
config.color_scheme = 'Oxocarbon Dark'

-- appearance
config.hide_tab_bar_if_only_one_tab = true

-- settings
config.max_fps = 120
config.prefer_egl = true

return config
