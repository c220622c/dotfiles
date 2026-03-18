return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		auto_install = true,
		ensure_installed = {
			"lua",
			"c",
			"vim",
			"fish",
			"bash",
			"dash",
			"python",
			"rust",
			"markdown",
			"markdown_inline",
		},
		sync_install = false,
		highlight = {
			enable = true,
		},
		indent = { enable = true },
	},
	opts_extend = { "ensure_installed" },
	lazy = false,
	build = ":TSUpdate",
}
