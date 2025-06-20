return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      csharp_ls = {},
      -- or
      omnisharp = {
        cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
        -- optional capabilities and settings here
      },
    },
  },
}
