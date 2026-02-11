vim.cmd [[ set runtimepath^=~/.vim runtimepath+=~/.vim/after ]]
vim.cmd [[ let &packpath=&runtimepath ]]
vim.cmd [[ source ~/.vimrc ]]

-- lazy.nvim
require("config.lazy")

require("config.lsp")
require("config.keymaps")
require("config.neovide")


vim.cmd [[ set guicursor= ]]
vim.cmd [[ set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor ]]
vim.cmd [[ set spelllang=en_gb ]]
-- vim.cmd [[ set spell spelllang=en_gb ]] -- enable spellcheck globally

vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave", "CmdwinEnter", "CmdlineEnter" }, {
	group = group,
	buffer = bufnr,
	callback = function()
		vim.schedule(function()
  			vim.cmd [[ set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor ]]
		end)
	end,
})
