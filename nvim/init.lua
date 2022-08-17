pcall(require, "impatient")

require("user.options")
require("user.keymaps")
require("user.plugins")

require("telescope").load_extension("fzf")
require("luasnip/loaders/from_vscode").lazy_load()

require("user.colorscheme")
require("user.lsp")
require("user.toggleterm")
require("user.lsp_lines")

pcall(require, "user.local")
