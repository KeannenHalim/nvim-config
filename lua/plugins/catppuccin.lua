require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    integrations = {
        treesitter = true,
        telescope = true,
        nvimtree = true,
        notify = false,
        cmp = true,
        gitsigns = true,
        mini = {
            enabled = true,
            indentscope_color = ""
        }
    },
})

vim.cmd.colorscheme("catppuccin")
vim.api.nvim_create_user_command("CatppuccinMocha", function()
    require("catppuccin").load("mocha")
end, {})

vim.api.nvim_create_user_command("CatppuccinLatte", function()
    require("catppuccin").load("latte")
end, {})

vim.api.nvim_create_user_command("CatppuccinFrappe", function()
    require("catppuccin").load("frappe")
end, {})

vim.api.nvim_create_user_command("CatppuccinMacchiato", function()
    require("catppuccin").load("macchiato")
end, {})
