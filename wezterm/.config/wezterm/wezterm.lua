local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- font
config.font_size = 12
config.font = wezterm.font('JetBrainsMono Nerd Font', { italic = false })

-- colors
config.colors = {
    foreground = "ffffff",
	cursor_bg = "ffffff",
	cursor_border = "ffffff",
}

-- appearance
config.enable_tab_bar = false
config.window_padding = {
	left = 8,
	right = 8,
	top = 8,
	bottom = 8,
}

-- options
config.max_fps = 120
config.enable_wayland = false

config.keys = {
    {
        key = "T",
        mods = "CTRL|SHIFT|SUPER",
        action = wezterm.action.Nop,
    },
}

return config
