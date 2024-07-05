vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_method = 'zathura_simple'

vim.g.vimtex_view_general_viewer = 'zathura'

vim.g.vimtex_view_general_options = '-r @line @pdf @tex'

vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1

vim.g.vimtex_compilier_method = 'latexrun'


-- -- For MacOS, dbus and zathura configurations seem too complicate
-- -- So use Skim
-- --
-- -- brew install --cask skim
--
-- vim.g.tex_flavor='latex' -- Default tex file format
-- vim.g.vimtex_view_method = 'skim' -- Choose which program to use to view PDF file 
-- vim.g.vimtex_view_skim_sync = 1 -- Value 1 allows forward search after every successful compilation
-- vim.g.vimtex_view_skim_activate = 1 -- Value 1 allows change focus to skim after command `:VimtexView` is given

