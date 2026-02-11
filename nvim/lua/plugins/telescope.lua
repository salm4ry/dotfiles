return {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},

	config = function()
		require ("telescope").setup {
			defaults = {
				layout_strategy = 'flex';
				layout_config = {
					width = 0.95,
					horizontal = { preview_width = 80 }
				},
				file_ignore_patterns = { ".git/[^h]" }, -- ignore .git directories
			},

			pickers = {
				find_files = {
					hidden = true, -- show hidden files
				}
			},
		}
	end
}
