return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local cmp = require("cmp_nvim_lsp")
			local lspconfig = require("lspconfig")
			local capabilities = cmp.default_capabilities()
			local on_attach = function(client, bufnr)
				if client.resolved_capabilities.completion then
					cmp.on_attach(client, bufnr)
				end
			end

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
      lspconfig.cssls.setup({
				capabilities = capabilities,
        on_attach = on_attach
      })
			lspconfig.html.setup({
				capabilities = capabilities,
        on_attach = on_attach
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
