require("lsp_signature").setup({
	hint_enable = false, -- inline hints (off is cleaner)
	floating_window = true, -- show popup
	floating_window_above_cur_line = true,
	handler_opts = { border = "rounded" },
})
