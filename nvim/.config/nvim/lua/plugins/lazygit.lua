return {
	"kdheepak/lazygit.nvim",
	cmd = "LazyGit",
	keys = {
		{
			"<leader>gg",
			"<cmd>LazyGit<cr>",
			desc = "Open LazyGit",
		},
	},
	init = function()
		-- Optional: define git directory if you're using worktrees or submodules
		vim.g.lazygit_floating_window_winblend = 0 -- transparency
		vim.g.lazygit_floating_window_scaling_factor = 0.9
		vim.g.lazygit_use_neovim_remote = true
	end,
	config = function()
		-- Optional auto-refresh Neo-tree git status on LazyGit exit
		vim.api.nvim_create_autocmd("TermClose", {
			pattern = "*lazygit",
			callback = function()
				-- If neo-tree git source is loaded, refresh it
				local ok, neo_git = pcall(require, "neo-tree.sources.git_status")
				if ok then
					neo_git.refresh()
				end
			end,
		})
	end,
}
