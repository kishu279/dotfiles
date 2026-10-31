-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- =========================================================
-- GENERAL
-- =========================================================

config.initial_cols = 120
config.initial_rows = 30

config.font_size = 15

config.font = wezterm.font_with_fallback({
    "FiraCode Nerd Font",
})

config.color_scheme = "Gruvbox Dark (Gogh)"

-- Windows + WSL
config.enable_wayland = false

-- Transparency
config.window_background_opacity = 0.7

-- This is macOS-only, so remove it on Windows
-- config.macos_window_background_blur = 20


-- =========================================================
-- WINDOW
-- =========================================================

config.window_decorations = "TITLE | RESIZE"

config.window_padding = {
    left = 2,
    right = 2,
    top = 0,
    bottom = 0,
}


-- =========================================================
-- WEZTERM TAB BAR
-- =========================================================
--
-- NOTE:
-- We are NOT using WezTerm tabs as our terminal tabs.
-- tmux will manage the tabs/windows.
--
-- You can hide the WezTerm tab bar completely.
--

config.hide_tab_bar_if_only_one_tab = true


-- =========================================================
-- WSL + TMUX
-- =========================================================

config.wsl_domains = wezterm.default_wsl_domains()

for _, dom in ipairs(config.wsl_domains) do
    if dom.name == "WSL:Ubuntu" then
        dom.default_prog = {
            "tmux",
            "new-session",
            "-A",
            "-s",
            "main",
        }
    end
end

config.default_domain = "WSL:Ubuntu"


-- =========================================================
-- WEZTERM-LEVEL KEYBINDS
-- =========================================================
--
-- These are NOT tmux keybindings.
-- Keep only keys that should be handled by WezTerm itself.
--

config.keys = {

    -- Alt+j / Alt+k
    -- Send ESC+j / ESC+k to applications such as Neovim
    {
        key = "j",
        mods = "ALT",
        action = wezterm.action.SendString("\x1bj"),
    },

    {
        key = "k",
        mods = "ALT",
        action = wezterm.action.SendString("\x1bk"),
    },
}


-- =========================================================
-- RETURN
-- =========================================================

return config
