return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "prettier",
        "tailwindcss-language-server",
        "typescript-language-server",
        "lua-language-server",
        "jdtls ",
      },
    },
  },
}
