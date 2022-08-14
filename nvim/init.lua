require("impatient")

require("user.options")
require("user.keymaps")
require("user.plugins")

require("user.colorscheme")
require("user.lsp")
require("user.toggleterm")
require("user.lsp_lines")

pcall(require, "local")
