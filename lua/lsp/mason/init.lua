require("mason").setup()

require("mason-lspconfig").setup({
	PATH = "prepend",
	ensure_installed = {
		"pyright"
	},

})

require("lsp/mason/settings/python")
-- require("lsp/mason/settings/clangd")
-- require("lsp/mason/settings/typst")
