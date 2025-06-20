return {
	"nvim-neo-tree/neo-tree.nvim",
	cmd = "Neotree",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{
			"<leader>fe",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.fn.getcwd() })
			end,
			desc = "Explorer NeoTree (cwd)",
		},
		{
			"<leader>fE",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.fn.expand("%:p:h") })
			end,
			desc = "Explorer NeoTree (current file dir)",
		},
		{ "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
		{ "<leader>E", "<leader>fE", desc = "Explorer NeoTree (current file dir)", remap = true },
		{
			"<leader>ge",
			function()
				require("neo-tree.command").execute({ source = "git_status", toggle = true })
			end,
			desc = "Git Explorer",
		},
		{
			"<leader>be",
			function()
				require("neo-tree.command").execute({ source = "buffers", toggle = true })
			end,
			desc = "Buffer Explorer",
		},
	},
	config = function()
		local events = require("neo-tree.events")
		local function on_move(data)
			-- You can replace this with your custom rename logic if needed
			print("Moved from", data.source, "to", data.destination)
		end

		require("neo-tree").setup({
			sources = { "filesystem", "buffers", "git_status" },
			open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
			filesystem = {
				bind_to_cwd = false,
				follow_current_file = { enabled = true },
				use_libuv_file_watcher = true,
				filtered_items = {
					hide_dotfiles = false,
					hide_by_name = { ".git", ".DS_Store" },
					always_show = { ".env", ".env.local" },
				},
			},
			window = {
				position = "left",
				width = 30,
				mappings = {
					["l"] = "open",
					["h"] = "close_node",
					["<space>"] = "none",
					["Y"] = {
						function(state)
							local node = state.tree:get_node()
							local path = node:get_id()
							vim.fn.setreg("+", path)
						end,
						desc = "Copy Path to Clipboard",
					},
					["O"] = {
						function(state)
							-- Replace with your system open function if not using LazyVim
							vim.fn.system({ "xdg-open", state.tree:get_node().path })
						end,
						desc = "Open with System Application",
					},
					["P"] = { "toggle_preview", config = { use_float = false } },
				},
			},
			default_component_configs = {
				indent = {
					with_expanders = true,
					expander_collapsed = "",
					expander_expanded = "",
					expander_highlight = "NeoTreeExpander",
				},
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "󰜌",
					-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
					-- then these will never be used.
					default = "*",
					highlight = "NeoTreeFileIcon",
				},
				modified = {
					symbol = "[+]",
					highlight = "NeoTreeModified",
				},
				name = {
					trailing_slash = false,
					use_git_status_colors = true,
					highlight = "NeoTreeFileName",
				},
				git_status = {
					symbols = {
						-- Change type
						added = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
						modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
						deleted = "✖", -- this can only be used in the git_status source
						renamed = "󰁕", -- this can only be used in the git_status source
						-- Status type
						untracked = "",
						ignored = "",
						unstaged = "󰄱",
						staged = "",
						conflict = "",
					},
				},
				diagnostics = {
					symbols = {
						hint = "󰌵", -- Hint icon
						info = "", -- Info icon
						warn = "", -- ← ⚠️ Change this one for warning
						error = "", -- Error icon
					},
				},
			},
			event_handlers = {
				{ event = events.FILE_MOVED, handler = on_move },
				{ event = events.FILE_RENAMED, handler = on_move },
			},
		})

		vim.api.nvim_create_autocmd("TermClose", {
			pattern = "*lazygit",
			callback = function()
				if package.loaded["neo-tree.sources.git_status"] then
					require("neo-tree.sources.git_status").refresh()
				end
			end,
		})

		-- Optional: auto-load if you start Neovim with a directory
		vim.api.nvim_create_autocmd("BufEnter", {
			group = vim.api.nvim_create_augroup("Neotree_autoload_dir", { clear = true }),
			once = true,
			callback = function()
				if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
					require("neo-tree")
				end
			end,
		})
	end,
}
