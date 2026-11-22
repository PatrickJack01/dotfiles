-- Monitor rules for all setups, matched by description (not port name).
-- Hyprland applies only the rules of monitors that are connected, and
-- re-applies them on hotplug, so no profile switching is needed.
-- Get descriptions with: hyprctl monitors | grep -E "^Monitor|description"
-- Positions are relative to the laptop panel at 0x0 (logical pixels).

-- Laptop panel (2880x1800 @ scale 2 = 1440x900 logical)
hl.monitor({ output = "eDP-1", mode = "2880x1800@60.00", position = "0x0", scale = 2 })

-- Setup 1: LG (left) | PA249 (middle) | laptop (right)
hl.monitor({ output = "desc:Ancor Communications Inc PA249 G6LMQS080200", mode = "1920x1200@59.95", position = "-1920x-224", scale = 1 })
hl.monitor({ output = "desc:LG Electronics L1953TR 0x0001F06B",            mode = "1280x1024@60.02", position = "-3200x-64",  scale = 1 })

-- Setup 2: (add rules here)

-- Setup 3: (add rules here)

-- Fallback for any unknown monitor (projectors, new setups): preferred mode, placed to the right
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })
