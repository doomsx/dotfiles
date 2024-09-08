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
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                require("onedark").load()
            end,
        },
    },
}
