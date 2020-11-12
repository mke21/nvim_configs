au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 | set softtabstop=2 | set shiftwidth=2
" javascript
set omnifunc=syntaxcomplete#Complete
" yaml
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
