local wezterm = require("wezterm")

local c = wezterm.config_builder()

c.font = wezterm.font("FiraCode Nerd Font Mono")
c.font_size = 16

c.window_decorations = "RESIZE"

c.color_scheme = "catppuccin-frappe"
c.window_background_opacity = 0.9
c.macos_window_background_blur = 30

c.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(c)

-- c.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
-- c.keys = {
-- 	{
-- 		key = "\\",
-- 		mods = "LEADER",
-- 		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	{
-- 		key = "|",
-- 		mods = "LEADER|SHIFT",
-- 		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	{
-- 		key = "a",
-- 		mods = "LEADER|CTRL",
-- 		action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }),
-- 	},
-- }

local smart_splits = wezterm.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")
smart_splits.apply_to_config(c, {
	-- the default config is here, if you'd like to use the default keys,
	-- you can omit this configuration table parameter and just use
	-- smart_splits.apply_to_config(config)

	-- directional keys to use in order of: left, down, up, right
	direction_keys = { "h", "j", "k", "l" },
	-- modifier keys to combine with direction_keys
	modifiers = {
		move = "CTRL", -- modifier to use for pane movement, e.g. CTRL+h to move left
		resize = "META", -- modifier to use for pane resize, e.g. META+h to resize to the left
	},
})

return c
