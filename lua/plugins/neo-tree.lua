return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		vim.keymap.set("n", "<C-n>", function()
			vim.cmd("Neotree")
			vim.cmd("vertical resize 30")
		end, {})

		-- Toggle Neo-tree
		vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { noremap = true, silent = true })
		-- Resize Neo-tree window: increase/decrease width
		vim.keymap.set("n", "<C-l>", function()
			vim.cmd("vertical resize +5")
		end, { noremap = true, silent = true })

		vim.keymap.set("n", "<C-h>", function()
			vim.cmd("vertical resize -5")
		end, { noremap = true, silent = true })

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {},
				},
			},
		})
	end,
}
