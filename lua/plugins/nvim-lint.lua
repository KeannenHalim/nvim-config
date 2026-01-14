require("lint").linters_by_ft = {
    javascript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    typescript = { "eslint_d" },
    css = {}, -- Prettier usually handles formatting here
    java = { "checkstyle" },
    cpp = { "cpplint" },
    c = { "cpplint" },
    python = { "flake8" },
    go = { "golangci_lint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        require("lint").try_lint()
    end,
})
