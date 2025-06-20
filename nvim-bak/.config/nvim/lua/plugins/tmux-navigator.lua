return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
      { "<C-h>", "<cmd> TmuxNavgateLeft<CR>", desc = "Window Left" },
      { "<C-j>", "<cmd> TmuxNavigateDown<CR>", desc = "Window Down" },
      { "<C-k>", "<cmd> TmuxNavigateUp<CR>", desc = "Window Up" },
      { "<C-l>", "<cmd> TmuxNavigateRight<CR>", desc = "Window Right" },
    },
  },
}
