  -- LSP
return  {
		{
			'neovim/nvim-lspconfig',
		},

		{
			'williamboman/mason.nvim',
			config = function()
				require("mason").setup({})
			end
		},
		{

			'williamboman/mason-lspconfig.nvim',
			config = function()
				local lsp_capabilities = require("blink.cmp").get_lsp_capabilities(lsp_capabilities)
				require("mason-lspconfig").setup({
					  ensure_installed = {},
					  handlers = {
					    function(server_name)
						    require('lspconfig')[server_name].setup({
							    capabilities = lsp_capabilities,
						    })
					    end,
					  },
				})
			end
		},

		{
			'L3MON4D3/LuaSnip'
		}
}
