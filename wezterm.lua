local wezterm = require("wezterm")

local font = "JetBrainsMono Nerd Font"

local colors = require('themes/lua/rose-pine-moon').colors()

local window_frame = require('themes/lua/rose-pine-moon').window_frame()

return {
	-- OpenGL for GPU acceleration, Software for CPU, or WebGpu
	front_end = "WebGpu",
	
  term = "xterm-256color",
	
	colors = colors,

	-- Font config
	font = wezterm.font("JetBrainsMono Nerd Font", { weight="Medium", stretch="Normal", style="Normal" }),
	font_rules = {
		{
			italic = true,
			font = wezterm.font("JetBrainsMono Nerd Font", { weight="Medium", stretch="Normal", italic = true }),
		},
		{
			italic = false,
			font = wezterm.font("JetBrainsMono Nerd Font", { weight="Medium", stretch="Normal", bold = true }),
		},
		{
			intensity = "Bold",
			font = wezterm.font("JetBrainsMono Nerd Font", { weight="Bold", stretch="Normal", bold = true }),
		},
	},

	warn_about_missing_glyphs = false,
	font_size = 16,
	line_height = 1.0,

	-- Cursor style
	default_cursor_style = "BlinkingBar",

	-- Aesthetic Night Colorscheme
	bold_brightens_ansi_colors = true,
	-- Padding
	window_padding = {
		left = 25,
		right = 25,
		top = 25,
		bottom = 25,
	},

	-- Tab Bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = false,
	tab_bar_at_bottom = true,

	-- General
	window_decorations = "RESIZE | MACOS_FORCE_DISABLE_SHADOW",
  macos_window_background_blur = 18,
	automatically_reload_config = true,
	window_background_opacity = 0.5,
	window_close_confirmation = "NeverPrompt",
	audible_bell = "Disabled",
  window_frame = window_frame,
	-- window_frame = { active_titlebar_bg = "#45475a", font = wezterm.font("JetBrainsMono Nerd Font", { weight="Bold", bold = true }) },
}

