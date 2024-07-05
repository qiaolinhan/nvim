-- :help options
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus" -- allows nvim to access the system clipboard
vim.opt.cmdheight = 2 -- nvim command line to display messages
vim.opt.fileencoding = "utf-8"
vim.opt.timeoutlen = 1000
vim.opt.updatetime = 300
vim.opt.mouse = "a"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.numberwidth = 2
vim.opt.wrap = true
vim.opt.guifont = "monospace:h17"
termguicolors = true

vim.cmd "set iskeyword+=-"
vim.cmd "set textwidth=85"
vim.cmd "set colorcolumn=-2"


-- to bashlike complete
vim.cmd "set wildmode=longest,list,full"

-- python
vim.g.python3_host_prog="/home/qiao/anaconda3/envs/dev/bin/python3"

