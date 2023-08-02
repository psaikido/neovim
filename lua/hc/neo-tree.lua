require("neo-tree").setup({
	filesystem = {
		follow_current_file = true,
		hide_gitignored = false,
		hide_dotfiles = false
	},

	window = {
		mappings = {
			["<C-x>"] = "open_split",
			["<C-v>"] = "open_vsplit",
			["<C-t>"] = "open_tabnew"
		}
	}
})
