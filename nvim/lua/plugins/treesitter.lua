return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	branch = 'main',
	config = function()
		local treesitter = require("nvim-treesitter")
		treesitter.setup()
		treesitter.install({
			"c",
			"lua",
			"vim",
			"comment",
			"vimdoc",
			"query",
			"python",
			"bash"
		})
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"c",
				"lua",
				"vim",
				"comment",
				"vimdoc",
				"query",
				"python",
				"bash"
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end
}
