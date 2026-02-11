if vim.g.neovide then
	vim.o.guifont = "Maple Mono:h12"
	vim.g.neovide_opacity = 0.9
	vim.g.neovide_normal_opacity = 0.9
	vim.o.winblend = 20
	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0
	vim.g.neovide_floating_corner_radius = 10.0
	vim.g.neovide_window_blurred = true

	vim.keymap.set('n', '<C-S-s>', ':w<CR>') -- Save
	vim.keymap.set('v', '<C-S-c>', '"+y') -- Copy
	vim.keymap.set('n', '<C-S-v>', '"+P') -- Paste normal mode
	vim.keymap.set('v', '<C-S-v>', '"+P') -- Paste visual mode
	vim.keymap.set('c', '<C-S-v>', '<C-R>+') -- Paste command mode
	vim.keymap.set('i', '<C-S-v>', '<ESC>l"+Pli') -- Paste insert mode

	-- Allow clipboard copy paste in neovim
	vim.api.nvim_set_keymap('', '<C-S-v>', '+p<CR>', { noremap = true, silent = true})
	vim.api.nvim_set_keymap('!', '<C-S-v>', '<C-R>+', { noremap = true, silent = true})
	vim.api.nvim_set_keymap('t', '<C-S-v>', '<C-R>+', { noremap = true, silent = true})
	vim.api.nvim_set_keymap('v', '<C-S-v>', '<C-R>+', { noremap = true, silent = true})

	-- neovide zoom in/out/reset scale
	if vim.g.neovide == true then
		vim.api.nvim_set_keymap("n", "<C-+>", 
			":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", 
			{ silent = true })
		vim.api.nvim_set_keymap("n", "<C-->",
			":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>",
			{ silent = true })
		vim.api.nvim_set_keymap("n", "<C-0>",
			":lua vim.g.neovide_scale_factor = 1<CR>",
			{ silent = true })
	end

end
