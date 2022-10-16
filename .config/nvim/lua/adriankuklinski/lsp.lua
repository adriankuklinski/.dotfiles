require("lspconfig").tsserver.setup({})

require("lspconfig").gopls.setup({
	cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})

require("lspconfig").rust_analyzer.setup({
	cmd = { "rustup", "run", "nightly", "rust-analyzer" },
})

