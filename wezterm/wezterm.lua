local wezterm = require("wezterm")
local config = {}

-- window
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.7
config.window_padding = {
	left = 0,
	right = 0,
	top = 5,
	bottom = 0,
}

-- font
config.font_size = 9
config.font = wezterm.font("CaskaydiaMono Nerd Font")

-- colors
config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
}

return config
