return {
	{
		'MeanderingProgrammer/markdown.nvim',
		main = "render-markdown",
		opts = {},
		name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		config = function()
		      require('render-markdown').setup {
			      -- trim heading #s and disable icons
			      heading = {
				      min_width = 80,
				      position = 'overlay',
				      width = 'block',
			      },
			      code = {
				      min_width = 80,
				      right_pad = 1,
				      width = 'block',
			      },
			      bullet = {
				      icons = { '', '', '◆', '◇' },
			      },
				-- hide heading, code block etc. gutter signs
			      sign = { enabled = false },
			      completions = { lsp = { enabled =  true } }
			}
	        end
        },

	{
	      'obsidian-nvim/obsidian.nvim',
	      version = '*',
	      ft = "markdown",
	      lazy = true,
	      dependencies = {
		      "nvim-lua/plenary.nvim"
	      },
	      config = function()
		      require('obsidian').setup {
			      legacy_commands = false,
			      workspaces = {
				      {
					      name = "r1ver",
					      path = "~/r1ver"
				      },
				      {
					      name = "fyp",
					      path = "~/fyp-vault"
				      },
			      },
			      completion = {
				      min_chars = 2,
			      },
			      footer = { enabled = false },
			      frontmatter = { enabled = false },
			      ui = { enable = false },
			      attachments = { folder = "attachments" }
		}

	      end
	},

	{
		'stevearc/aerial.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("aerial").setup {
				-- optionally use on_attach to set keymaps when aerial has attached to a buffer
				on_attach = function(bufnr)
					-- Jump forwards/backwards with '{' and '}'
					vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
					vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
				end,

				backends = { "treesitter", "lsp", "markdown", "asciidoc", "man" }
			}
		end
	},

}
