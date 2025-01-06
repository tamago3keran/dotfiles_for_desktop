local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.window_background_image = '/Users/takuma/.wezterm/background_image.jpeg'
config.window_background_image_hsb = {
  brightness = 0.025,
}
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false

return config
