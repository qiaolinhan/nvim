local opts = { noremap = ture, silent = ture }
local term_opts = { silent = ture }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

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

-- Normal --
-- Markdown-preview
keymap("n", "r", "<Plug>MarkdownPreview", opts)

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

keymap("n", "<leader>e", ":Lexplore 20<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-k>", ":bprevious<CR>", opts)

-- Insert
-- Pres jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-j>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
