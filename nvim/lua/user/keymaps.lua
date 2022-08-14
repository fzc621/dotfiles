local cmd = vim.cmd

-- avoid mistyping write/quit
cmd("command WQ wq")
cmd("command Wq wq")
cmd("command W w")
cmd("command Q q")

-- replace ^ with 0
vim.keymap.set("", "0", "^", { noremap = true, silent = true })

-- set leader to <Space>
vim.keymap.set("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<CR>", ":", { noremap = true })

-- disable highlight
vim.keymap.set("", "<Leader><CR>", ":noh<CR>", { noremap = true })

-- use <C-a> to select all
vim.keymap.set("", "<C-a>", "gg0vG$", { noremap = true })
vim.keymap.set({ "v", "i" }, "<C-a>", "<Esc>gg0vG$", { noremap = true })

-- remap increment / decrement shortucts to + and - signs
vim.keymap.set("n", "<C-=>", "<C-a>", { noremap = true })
vim.keymap.set("n", "<C-->", "<C-x>", { noremap = true })

-- movement around wrapped lines
vim.keymap.set("n", "j", "v:count ? 'j' : 'gj'", { noremap = true, expr = true })
vim.keymap.set("n", "k", "v:count ? 'k' : 'gk'", { noremap = true, expr = true })

-- split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })

-- resize with arrows
vim.keymap.set("n", "<S-Up>", ":resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<S-Down>", ":resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<S-Left>", ":vertical resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<S-Right>", ":vertical resize -2<CR>", { noremap = true })

-- make behavior more like in common editors
vim.keymap.set("i", "<C-v>", "<C-g>u<Cmd>set paste<CR><C-r>+<Cmd>set nopaste<CR>", { noremap = true })

-- use jf / fj to escape
vim.keymap.set({ "v", "i" }, "jf", "<Esc>", { noremap = true, silent = true })
vim.keymap.set({ "v", "i" }, "fj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- stay in indent mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })


