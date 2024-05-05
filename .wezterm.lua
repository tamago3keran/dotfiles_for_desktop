local wezterm = require('wezterm')
local config = wezterm.config_builder()

config.window_background_image = '/Users/takuma/.wezterm/background_image.jpeg'
config.window_background_image_hsb = {
  brightness = 0.025,
}

return config
