-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local M = {}

M.general = {
  ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
  ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
  ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
}
vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<F1>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<F2>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<F3>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<F4>", function()
  ui.nav_file(4)
end)
