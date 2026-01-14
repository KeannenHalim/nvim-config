require("nvim-tree").setup({
  -- Ensure correct settings (optional)
  renderer = {
    highlight_opened_files = "all",
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
      }
    }
  },
  filters = {
    dotfiles = false,
  }
})
