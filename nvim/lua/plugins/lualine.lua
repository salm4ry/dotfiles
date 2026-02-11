local function fmtWordCount(wc)
	--[[
	if wc == 1 then
		return wc .. " word"
	else
		return wc .. " words"
	end
	--]]
	return " " .. wc
end

-- word count function
-- based on: https://vi.stackexchange.com/a/43947
local function getWords()
	-- the third string here is the string for visual-block mode (^V)
	if vim.fn.mode() == "v" or vim.fn.mode() == "V" or vim.fn.mode() == "" then
		return fmtWordCount(vim.fn.wordcount().visual_words)
	else
		return fmtWordCount(vim.fn.wordcount().words)
	end
end

return {
	  'nvim-lualine/lualine.nvim',
	  dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
	  config = function()
		require('lualine').setup {
			options = {
				  icons_enabled = true,
				  theme = 'auto',
				  component_separators = '',
				  section_separators = { left = '', right = '' },
				  disabled_filetypes = {
					  statusline = {},
					  winbar = {},
				  },
				  ignore_focus = {},
				  always_divide_middle = true,
				  always_show_tabline = false,
				  globalstatus = false,
				  refresh = {
					  statusline = 100,
					  tabline = 100,
					  winbar = 100,
				  }
			},
			sections = {
				  lualine_a = {{'mode', separator = {left = '', right = ''}, icon = '󰧱'}},
				  lualine_b = {{'branch', icon = ''}, 'diff', 'diagnostics' },
				  lualine_c = {'filename'},
				  lualine_x = {'encoding', 'fileformat', 'filetype'},
				  lualine_y = {'progress', { getWords } },
				  -- lualine_y = {{'progress', separator = {left = ''}}},
				  lualine_z = {{'location', separator = {left = '', right = ''}}}
			},
			inactive_sections = {
				  lualine_a = {},
				  lualine_b = {},
				  lualine_c = {'filename'},
				  lualine_x = {'location'},
				  lualine_y = {},
				  lualine_z = {}
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	end
}
