vim.env.JAVA_HOME = "/opt/homebrew/opt/openjdk@21"
vim.env.PATH = vim.env.JAVA_HOME .. "/bin:" .. vim.env.PATH

require("lazy_setup")
require("core.options")
require("core.keymaps")
require("core.plugins")
