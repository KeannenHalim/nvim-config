vim.g.mapleader = " "

local keymap = vim.keymap.set

-- General
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap("n", "<leader>Q", ":qa<CR>", { desc = "Quit all" })
keymap("n", "[b", ":bprevious<CR>", { silent = true })
keymap("n", "]b", ":bnext<CR>", { silent = true })
keymap("n", "<leader>tn", ":tabnew<CR>", { desc = "New tab" })
keymap("n", "<leader>tc", ":tabclose<CR>", { desc = "Close tab" })
keymap("n", "<leader>to", ":tabonly<CR>", { desc = "Close other tabs" })

-- Reset Highlighted Text
keymap("n", "<Esc>", "<Esc>:noh<CR>")

-- Comment Line
keymap("n", "<C-/>", "gcc", { remap = true })
keymap("v", "<C-/>", "gc", { remap = true })

-- Auto Complete
keymap("i", "<C-k>", vim.lsp.buf.signature_help, {
	desc = "Show function signature",
})
-- Show diagnostic message in a floating window
keymap("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Show diagnostic" })

-- Navigate diagnostics
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- Populate the location list with all diagnostics
keymap("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Diagnostics list" })

-- Lint and Format on Save
keymap("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format with Conform" })
