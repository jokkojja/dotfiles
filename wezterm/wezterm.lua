local wezterm = require("wezterm")
local config = wezterm.config_builder()
local background_image_path = wezterm.config_dir .. "/peakpx.jpg"

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	font = wezterm.font("JetBrains Mono", { weight = "ExtraBold" }),
	line_height = 1.1,
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
	font_size = 17,
	background = {
		{
			source = {
				File = background_image_path,
			},
			hsb = {
				hue = 1,
				saturation = 1,
				brightness = 0.05,
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#282c35",
			},
			height = "100%",
			opacity = 0.55,
		},
	},
}

config.keys = {
	{
		key = "Enter",
		mods = "CMD",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "d",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

return config
