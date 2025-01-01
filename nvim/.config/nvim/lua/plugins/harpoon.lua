return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "Add file to Harpoon",
      },
      {
        "<C-e>",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "Toggle Harpoon Menu",
      },
      {
        "<F1>",
        function()
          require("harpoon.ui").nav_file(1)
        end,
        desc = "Navigate to Harpoon File 1",
      },
      {
        "<F2>",
        function()
          require("harpoon.ui").nav_file(2)
        end,
        desc = "Navigate to Harpoon File 2",
      },
      {
        "<F3>",
        function()
          require("harpoon.ui").nav_file(3)
        end,
        desc = "Navigate to Harpoon File 3",
      },
      {
        "<F4>",
        function()
          require("harpoon.ui").nav_file(4)
        end,
        desc = "Navigate to Harpoon File 4",
      },
    },
  },
}
