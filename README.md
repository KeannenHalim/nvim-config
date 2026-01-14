# Neovim Config

- This is my personal Neovim configuration, optimized for **coding in multiple languages** with LSP, auto-completion, formatting, linting, and aesthetics similar to VS Code.
- I configure it for my mac, so please change the config file path if you use another OS.
- The neovim version that I use is **NVIM v0.11.1**
---

## ⚡ Cloning and Setup

1. Backup your current Neovim config (optional):

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. Clone the repo
```bash
git clone git@github.com:KeannenHalim/nvim-config.git ~/.config/nvim
```

3. Open the nvim, then it will automatically install everything.

---
## 🔌 Plugins Included

| Plugin                            | Purpose                                   | Version / Notes                         |
| --------------------------------- | ----------------------------------------- | --------------------------------------- |
| `catppuccin/nvim`                 | Theme / colorscheme                       | Latte, Frappe, Macchiato, Mocha flavors |
| `nvim-lualine/lualine.nvim`       | Statusline                                | -                                       |
| `nvim-treesitter/nvim-treesitter` | Syntax highlighting                       | `:TSUpdate` for parsers                 |
| `nvim-telescope/telescope.nvim`   | Fuzzy finder                              | Depends on `plenary.nvim`               |
| `windwp/nvim-autopairs`           | Auto-pairs `()[]{}` etc.                  | -                                       |
| `nvim-tree/nvim-tree.lua`         | File explorer                             | -                                       |
| `lewis6991/gitsigns.nvim`         | Git integration (signs & hunk navigation) | -                                       |
| `hrsh7th/nvim-cmp`                | Auto-completion engine                    | -                                       |
| `hrsh7th/cmp-nvim-lsp`            | LSP completions                           | -                                       |
| `hrsh7th/cmp-buffer`              | Buffer completions                        | -                                       |
| `hrsh7th/cmp-path`                | File path completions                     | -                                       |
| `saadparwaiz1/cmp_luasnip`        | Snippet completions                       | -                                       |
| `L3MON4D3/LuaSnip`                | Snippet engine                            | -                                       |
| `rafamadriz/friendly-snippets`    | Predefined snippets                       | -                                       |
| `williamboman/mason.nvim`         | LSP/Formatter/Debugger manager            | -                                       |
| `mason-org/mason-lspconfig.nvim`  | Auto-setup LSP servers                    | -                                       |
| `neovim/nvim-lspconfig`           | LSP configuration                         | Pyright, Go, Clang, Java, etc.          |
| `stevearc/conform.nvim`           | Formatter integration                     | Black, Prettier, Clang-format, GoFmt    |
| `mfussenegger/nvim-lint`          | Linter                                    | Flake8, ESLint, etc.                    |
| `numToStr/Comment.nvim`           | Commenting code                           | `gc` toggle                             |
| `ray-x/lsp_signature.nvim`        | Function signature hints                  | Floating popup on LSP                   |

---
## ⚙️ Features

- VS Code-like LSP experience: Hover info, diagnostics, code actions.

- Autoformat on save: Supports Black (Python), Prettier (JS/TS/CSS), Clang-format (C/C++), GoFmt (Go).

- Autocompletion: LSP + snippets with nvim-cmp & LuaSnip.

- Aesthetic UI: Catppuccin theme, lualine statusline, smooth treesitter highlighting.

- Git integration: Gitsigns, hunk navigation.

- Commenting & code hints: Comment.nvim & lsp_signature.nvim.

---
## 💡 Notes
1. To add something related to linter, autocompletions, lsp servers, etc, you can run `:Mason` inside neovim, then you can choose the thing you want.
2. I personally define the keymaps that I use on `~/.config/nvim/lua/core/keymaps.lua`
3. You can run `:Lazy` inside neovim to update or install package you want.

