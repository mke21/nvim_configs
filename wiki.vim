" vimwiki
let g:vimwiki_list = [{'path': 'c:/Users/mke/Nextcloud/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


" calendar
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map c :call ToggleCalendar()
