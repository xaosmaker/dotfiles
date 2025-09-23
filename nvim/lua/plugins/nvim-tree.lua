require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
		-- 	update_cwd = false,
	},
	view = {
		width = 27,
	},
	filters = {
		enable = true,
		git_ignored = false,
		dotfiles = false,
		git_clean = false,
		no_buffer = false,
		no_bookmark = false,
		custom = {},
		exclude = {},
	},

	renderer = {
		root_folder_modifier = ":t",

		icons = {
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					-- ignored = "◌",
					ignored = "#",
					-- ignored = " ",
				},
			},
		},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
})
