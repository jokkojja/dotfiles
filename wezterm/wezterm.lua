local wezterm = require("wezterm")
config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	font = wezterm.font("JetBrains Mono", { weight = "ExtraBold" }),
	line_height = 1.1,
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" }, -- включить лигатуры
	font_size = 17,
	background = {
		{
			source = {
				File = "/Users/frolovkirill/peakpx.jpg",
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
	-- Cmd+Enter → переключить текущее окно в полноэкранный режим
	{
		key = "Enter",
		mods = "CMD",
		action = wezterm.action.ToggleFullScreen,
	},
	-- Ctrl+D → закрыть текущий терминал/панель
	{
		key = "d",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

return config
