-- Input configuration


hl.config({
    input = {
        kb_layout = "gb",
        kb_variant = "",
        kb_options = "grp:win_space_toggle",
        accel_profile = "flat",
        -- sensitivity = -0.25,
    },
    -- Uncomment the section below to enable software cursors if needed
    -- cursor = {
    --     no_hardware_cursors = 1,
    -- },
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down",       action = "close" })
hl.gesture({ fingers = 3, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "left",       action = "float" })

