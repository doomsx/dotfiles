return {

    {
        "stevearc/conform.nvim",
        lazy = true,
        opts = {
            formatters_by_ft = {
                php = { "php_cs_fixer", "pint" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        },
    },
}
