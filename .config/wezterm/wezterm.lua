-- Initialize Configuration
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local opacity = 0.95
local transparent_bg = "rgba(5, 5, 5, " .. opacity .. ")"

-- Add to PATH
local more_paths = ":/opt/homebrew/bin"
config.set_environment_variables = {
	PATH = os.getenv("PATH") .. more_paths,
}

-- Font
config.font = wezterm.font_with_fallback({
	{
		family = "JetBrainsMono Nerd Font",
		weight = "Bold",
	},
	"Segoe UI Emoji",
})
config.font_size = 13

-- Window
config.initial_rows = 45
config.initial_cols = 180
config.window_decorations = "RESIZE"
config.window_background_opacity = opacity
config.macos_window_background_blur = 100
config.window_close_confirmation = "NeverPrompt"
config.win32_system_backdrop = "Acrylic"
config.max_fps = 120
config.animation_fps = 120
config.cursor_blink_rate = 250
config.window_padding = { left = 5, right = 5, top = 5, bottom = 0 }

-- Colors
-- local rose-pine theme
config.color_scheme = "rose-pine"
config.colors = wezterm.color.get_builtin_schemes()["rose-pine"]

-- rose pine plugin theme
-- local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main
-- config.colors = theme.colors()
-- if using fancy tab bar
-- config.window_frame = theme.window_frame()

-- cyberdream theme
-- config.colors = require("cyberdream")

config.force_reverse_video_cursor = true
config.colors.background = transparent_bg

-- Shell
config.default_prog = { "tmux", "new-session", "-A", "-s", "main" }

-- Tabs
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false
config.colors.tab_bar = {
	background = transparent_bg,
	new_tab = { fg_color = config.colors.background, bg_color = config.colors.brights[6] },
	new_tab_hover = { fg_color = config.colors.background, bg_color = config.colors.foreground },
}

wezterm.on("format-tab-title", function(tab, _, _, _, hover)
	local background = config.colors.brights[1]
	local foreground = config.colors.foreground

	if tab.is_active then
		background = config.colors.brights[7]
		foreground = config.colors.background
	elseif hover then
		background = config.colors.brights[8]
		foreground = config.colors.background
	end

	local title = tostring(tab.tab_index + 1)
	return {
		{ Foreground = { Color = background } },
		{ Text = "█" },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Foreground = { Color = background } },
		{ Text = "█" },
	}
end)

-- Keybindings
config.keys = {
	{ mods = "OPT", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "f" }) },
	{ mods = "CMD", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "e" }) },
	{ mods = "CMD", key = "Backspace", action = wezterm.action.SendKey({ mods = "CTRL", key = "u" }) },
	{ mods = "CMD|OPT", key = "LeftArrow", action = wezterm.action.ActivateTabRelative(-1) },
	{ mods = "CMD|OPT", key = "RightArrow", action = wezterm.action.ActivateTabRelative(1) },
	{ mods = "CMD|SHIFT", key = "LeftArrow", action = wezterm.action.ActivateTabRelative(-1) },
	{ mods = "CMD|SHIFT", key = "RightArrow", action = wezterm.action.ActivateTabRelative(1) },
	{ mods = "CMD", key = "d", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ mods = "CMD|SHIFT", key = "d", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ mods = "CTRL", key = "h", action = wezterm.action.ActivatePaneDirection("Left") },
	{ mods = "CTRL", key = "l", action = wezterm.action.ActivatePaneDirection("Right") },
	{ mods = "CTRL", key = "j", action = wezterm.action.ActivatePaneDirection("Down") },
	{ mods = "CTRL", key = "k", action = wezterm.action.ActivatePaneDirection("Up") },
}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "CMD|ALT",
		action = wezterm.action.SelectTextAtMouseCursor("Block"),
		alt_screen = "Any",
	},
	{
		event = { Down = { streak = 4, button = "Left" } },
		action = wezterm.action.SelectTextAtMouseCursor("SemanticZone"),
		mods = "NONE",
	},
}

return config
