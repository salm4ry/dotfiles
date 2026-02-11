return  {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '*',
	config = function()
		require("blink.cmp").setup {
			keymap = {
				preset = 'enter',
			},

			sources = {
			      default = { 'lsp', 'path', 'snippets', 'buffer' },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },

			-- rounded window borders
			completion = {
				menu = { border = 'rounded' },
				documentation = {
					auto_show = false,
					window = { border = 'rounded' }
				},
				list = {
					selection = {
						preselect = false
					}
				}
			},

			signature = { window = { border = 'rounded' } }
		}
	end
}
