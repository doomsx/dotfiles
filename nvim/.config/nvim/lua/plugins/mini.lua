return {
	{
		"echasnovski/mini.ai",
		version = "*", -- or omit for latest
		config = function()
			require("mini.ai").setup() -- uses default mappings like `a)` or `i"` etc.
		end,
	},
	{
		"echasnovski/mini.extra",
		version = "*",
		config = function()
			require("mini.extra").setup()

			-- Optional: set mini.icons globally so other plugins (like lualine or neo-tree) can use it
			vim.g.icons_enabled = true
		end,
	},
}
