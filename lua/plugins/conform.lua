require("conform").setup({
	format_on_save = {
		timeout_ms = 2000,
		lsp_fallback = true,
	},
	formatters_by_ft = {
		javascript = { "prettierd", "prettier" },
		javascriptreact = { "prettierd", "prettier" },
		typescript = { "prettierd", "prettier" },
		css = { "prettier" },
		java = { "google-java-format" },
		cpp = { "clang_format" },
		c = { "clang_format" },
		python = { "black" },
		go = { "gofmt" },
		lua = { "stylua" },
		html = { "prettier" },
	},
})
