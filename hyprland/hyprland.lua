-- CachyOS Hyprland Configuration

require("config.animations")
require("config.autostart")
require("config.colors")
require("config.decorations")
require("config.variables")
require("config.environment")
require("config.inputs")
require("config.binds")
require("config.misc")
require("config.monitors")
require("config.windowrules")
require("config.workspaces")


hl.bind("SUPER + K", hl.dsp.exec_cmd("/home/brandon/Code/MassScripts/Linux/catWallpaper.sh noctalia"))


hl.bind("SUPER + H", hl.dsp.exec_cmd("/home/brandon/Code/MassScripts/Linux/changeWallpaper.sh /run/media/brandon/HDD/Wallpapers noctalia"))

hl.bind("SUPER + G", hl.dsp.exec_cmd("/home/brandon/Code/MassScripts/Linux/changeWallpaper.sh /run/media/brandon/HDD/Wallpapers noctalia -r"))


hl.bind("SUPER + N", function()
    hl.dispatch(hl.dsp.focus({ workspace = "empty" }))
end)
