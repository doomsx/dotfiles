return {
    {
        "navarasu/onedark.nvim",
        name = "onedark",
        lazy = "false",
        opts = {
            style = "deep",
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                require("onedark").load()
                require("catppuccin").load()
            end,
        },
    },
}
