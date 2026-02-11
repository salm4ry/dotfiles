-- lua/plugins/rose-pine.lua
local transparent = true

if vim.g.neovide then
	transparent = false
end

-- theme and bufferline config
return {
	{
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require ("rose-pine").setup {
			variant = 'auto',
			dark_variant = 'main',

			enable = {
				terminal = true,
				legacy_highlights = true,
				migrations = true,
			},

			styles = {
				bold = true,
				italic = false,
				transparency = transparent,
			},

			--- @usage string hex value or named color from rosepinetheme.com/palette
			groups = {
				border = "muted",
				link = "iris",
				panel = "surface",

				error = "love",
				hint = "iris",
				info = "foam",
				note = "pine",
				todo = "rose",
				warn = "gold",

				git_add = "foam",
				git_change = "rose",
				git_delete = "love",
				git_dirty = "rose",
				git_ignore = "muted",
				git_merge = "iris",
				git_rename = "pine",
				git_stage = "iris",
				git_text = "rose",
				git_untracked = "subtle",

				h1 = 'love',
				h2 = 'rose',
				h3 = 'gold',
				h4 = 'pine',
				h5 = 'foam',
				h6 = 'iris',
			},

			-- Change specific vim highlight groups
			-- https://github.com/rose-pine/neovim/wiki/Recipes
			highlight_groups = {
				ColorColumn = { bg = 'highlight_low' },

				-- make certain highlight groups italic
				Comment = { italic = true },
				Statement = { italic = true },
				Conditional = { italic = true },
				Repeat =  { italic = true },
				Label = { italic = true },
				Exception = { italic = true },
				["@markup.italic"] = { italic = true },

				Identifier = { fg = '#ea9a97' },

				-- format string characters etc.
				Character = { fg = 'foam' },

				-- CursorLine = { bg = 'highlight_med', blend = 45 },
				-- CursorLine = { bg = 'iris', blend = 10 },
				-- StatusLine = { fg = 'base', bg = 'rose', blend = 10 },
				ScrollColor = { fg = 'base', bg = 'rose', blend = 10 },

				-- leafy search!
				CurSearch = { fg = "base", bg = "leaf", inherit = false },
				Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

				-- indent guide background
				IblIndent = { fg = "highlight_med" },

				-- bufferline selected tab indicator
				BufferlineIndicatorSelected = { fg = "rose" },

				-- markdown rendering highlights
				RenderMarkdownInlineHighlight = { bg = "rose", blend = 20, inherit = false },
				RenderMarkdownCodeInline = { fg = "foam", bg = "foam", blend = 10 }
			},
		}
		vim.cmd("colorscheme rose-pine")
	end
	},
	{
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					themable = true,
					show_buffer_close_icons = false,
					truncate_names = false,
					always_show_bufferline = false
				},
				highlights = require("rose-pine.plugins.bufferline")
			})
		end
	}
}
