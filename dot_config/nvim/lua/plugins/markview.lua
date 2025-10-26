return {
	"OXY2DEV/markview.nvim",
	lazy = false,

	dependencies = {
		"saghen/blink.cmp",
	},

	opts = {
		preview = {
			filetypes = { "markdown", "codecompanion" },
			ignore_buftypes = {},
		},
	},
}
