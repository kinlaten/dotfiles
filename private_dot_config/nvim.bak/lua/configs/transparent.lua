-- lua/custom/transparent.lua
require("transparent").setup({
    -- Add a list of highlight groups to clear
    extra_groups = { "NvimTreeNormal", "BufferLineBackground" },
})
