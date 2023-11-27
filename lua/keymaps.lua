
-- Commonly, the keymap with lua for neovim could be the format as shown in
-- the followings
-- vim.keymap.set({mode}, {lhs}, {rhs}, {options})
-- vim.api.nvim_set_keymap({mode}, {lhs}, {rhs}, {options})

-- Some information about `noremap`, `nnoremap`, ...
-- https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping


local opts = { noremap = ture, silent = ture }

local term_opts = { silent = ture }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
-- vim.g is for `global`
-- Remap space as leader key
keymap("", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maploacalleadeer = " "

-- Modes
--   normal_mode = "n",
--   visual_mode = "v",
--   visual_block_mode = "x"
--   term_mode = "t",
--   command_mode = "c",
--   `Enter` = <cr>
--   `Control` = <C->
--   `Alt` = <A->
--   b for buffer
--   f for file

---------------------------------------
-- Normal --

-- Vimtex-preview
-- \ll

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize window with arrow keys
keymap("n", "<Up>", ":resize +2<CR>", opts)
keymap("n", "<Down>", ":resize -2<CR>", opts)
keymap("n", "<Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<Right>", ":vertical resize -2<CR>", opts)


-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-k>", ":bprevious<CR>", opts)

-- code runner keymaps
vim.keymap.set('n', 'r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- markdown-preview
vim.keymap.set('n', 'r', ':MarkdownPreview', {})
-- :MarkdownPreview
-- :MarkdownPreviewStop
-- :MarkdownPreviewToggle
---------------------------------------
-- Insert
-- Pres jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- Relatively smart tab
-- keymap('i', '<TAB>', 'pumvisible() ? "\<C-n>" : "\<TAB>"', {expr = true})
-- keymap('i', '<S-TAB>', 'pumvisible() ? "\<C-p>" : "\<C-h>"', {expr = true})

--------------------------------------
-- Visual
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-j>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)


