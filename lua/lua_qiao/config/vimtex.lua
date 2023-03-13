vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_method = 'skim'

vim.g.vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
vim.g.vimtex_view_general_options = '-r @line @pdf @tex'

vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 1

augroup vimtex_mac
    autocmd!
    autocmd User VimtexEventCompileSuccess call UpdateSkim()
augroup END

function! UpdateSkim() abort
    let l:out = b:vimtex.out()
    let l:src_file_path = expand('%:p')
    let l:cmd = [g:vimtex_view_general_viewer, '-r']

    if !empty(system('pgrep Skim'))
    call extend(l:cmd, ['-g'])
    endif

    call jobstart(l:cmd + [line('.'), l:out, l:src_file_path])
endfunction
