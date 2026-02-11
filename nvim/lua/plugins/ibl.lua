return {
	"lukas-reineke/indent-blankline.nvim", 
	main = "ibl" ,
	config = function()
		require("ibl").setup {
			indent = {
				tab_char = "│",
				-- highlight = "IndentBlanklineSpaceChar",
				smart_indent_cap = true,
				priority = 2,
				repeat_linebreak = false
			},
			scope = { enabled = false },
		}
	end
}
