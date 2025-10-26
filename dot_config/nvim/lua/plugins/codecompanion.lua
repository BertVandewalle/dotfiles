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
		vim.keymap.set(
			{ "n", "v" },
			"<LocalLeader>ca",
			"<cmd>CodeCompanionActions<cr>",
			{ noremap = true, silent = true }
		)
		vim.keymap.set(
			{ "n", "v" },
			"<LocalLeader>cc",
			"<cmd>CodeCompanionChat Toggle<cr>",
			{ noremap = true, silent = true }
		)
		vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })
		vim.cmd([[cab cc CodeCompanion]])
	end,
}
