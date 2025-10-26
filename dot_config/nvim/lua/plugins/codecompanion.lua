return {
	"olimorris/codecompanion.nvim",
	opts = {
		strategies = {
			chat = {
				adapter = "copilot",
				model = "gpt5-mini",
			},
			inline = {
				adapter = "copilot",
				model = "gpt5-mini",
			},
			agent = {
				adapter = "copilot",
				model = "gpt5-mini",
			},
		},
	},

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function(_, opts)
		require("codecompanion").setup(opts)
		vim.cmd([[cab cc CodeCompanion]])
	end,
}
