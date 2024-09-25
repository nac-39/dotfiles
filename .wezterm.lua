local wezterm = require 'wezterm'

local config = {}

if wezterm.config_buffer then
    config = wezterm.config_buffer()
end

-- カラースキームの設定
config.color_scheme = 'OneHalfDark'
config.font_size = 17
config.freetype_load_target = "Light"
wezterm.font("UDEV Gothic NF", { weight = "Bold", stretch = "Normal", style = "Normal" }) -- /Users/nanaco.s/Library/Fonts/UDEVGothicNF-Regular.ttf, CoreText
config.window_background_opacity = 0.8
-- ぼかす
config.macos_window_background_blur = 20

-- タイトルバーを消す
config.window_decorations = "RESIZE"

-- タブが一つしかない時はタブを表示しない
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}
config.window_background_gradient = {
  colors = { "#000000" },
}

--shortcut key

config.keys = {
    -- Command + Shift + d => 上下に新しいペインを作成（画面を分割）
    {
        key = 'd',
        mods = 'SHIFT|CMD',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },

    -- Command + d => 新しいペインを作成（画面を分割）
    {
        key = 'd',
        mods = 'CMD',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },

    -- Command + - => 文字サイズを小さくする
    {
        key = '-',
        mods = 'CMD',
        action = wezterm.action.DecreaseFontSize
    },

    -- Command + + => 文字サイズを大きくする
    {
        key = '+',
        mods = 'CMD',
        action = wezterm.action.IncreaseFontSize
    },

    -- Command + [ => 次のPaneに移動する 
    {
        key = '[',
        mods = 'CMD',
        action = wezterm.action.ActivatePaneDirection 'Next'
    },

    -- Command + ] => 前のPaneに移動する 
    {
        key = ']',
        mods = 'CMD',
        action = wezterm.action.ActivatePaneDirection 'Prev'
    },
}

return config

