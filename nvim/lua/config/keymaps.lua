-- keybinds
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.spell_suggest, {})

-- listchars
vim.opt.list = true
vim.opt.listchars:append({ tab = '  ', eol = '$', trail = '.'})

-- map f5 to make
vim.api.nvim_set_keymap('n', '<F5>', ':make<CR>', { noremap = true })

-- map 'm' to make
-- vim.api.nvim_set_keymap('n', 'm', ':make<CR>', { noremap = true })

-- map Ctrl + left/right to navigate through buffers
vim.api.nvim_set_keymap('n', '<C-right>', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-left>', ':bprev<CR>', { noremap = true })

-- obsidian follow link
vim.api.nvim_set_keymap('n', 'gf', ':Obsidian follow_link<CR>', { noremap = true })

-- neovide zoom in/out/reset scale
if vim.g.neovide == true then
  vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end

-- Toggle aerial
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
