local opt = vim.opt

opt.number = true -- show line numbers
opt.relativenumber = true -- show relative numbers by default

-- show absolute numbers in insert mode, relative in normal mode
vim.cmd([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END
]])

opt.showmatch = true -- show matching brackets

opt.smartindent = true -- use c-like indents when no indentexpr is used
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 4 -- use 4 spaces when inserting tabs
opt.tabstop = 4 -- show tabs as 4 spaces

opt.splitright = true -- vsplit to right of current window
opt.splitbelow = true -- hsplit to bottom of current window

opt.hidden = true -- allow background buffers

opt.scrolloff = 2 -- include 2 rows of context above/below current line
opt.sidescrolloff = 5 -- include 5 colums of context to the left/right of current column

opt.ignorecase = true -- ignore case in searches...
opt.smartcase = true -- ...unless we use mixed case

opt.joinspaces = false -- join lines without two spaces

opt.termguicolors = true -- allow true colors

opt.inccommand = "nosplit" -- show effects of substitute incrementally

opt.mouse = "a" -- enable mouse mode

opt.updatetime = 400 -- decrease time for cursorhold event

opt.title = true
opt.titlestring = "%F"

opt.cursorline = true -- highlight the text line of the cursor

opt.lazyredraw = true -- the screen will not be redrawn while executing macros, registers ant etc.

opt.list = true -- see the difference between tabs and spaces and for trailing blanks
opt.listchars = "trail:·,tab:→ "

opt.wildmode = "longest:full,full" -- completion mode

opt.foldenable = false -- open all folds

opt.swapfile = false -- do not use a swapfile for the buffer

opt.showmode = false -- do not display current mode (use statusline)

opt.signcolumn = "yes" -- always show the signcolumn

vim.o.whichwrap = vim.o.whichwrap .. "h,l,<,>,[,]" -- allow moves between lines

opt.gdefault = true --  toggle the substitution of all match
