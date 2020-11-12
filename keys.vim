" Window movements
nnoremap <C-x> <C-v> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" tabs
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>
" folding with space
nnoremap <space> za
" set working directory to where current file is located 
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" Move between buffers
nnoremap <C-Right> :bn <CR>
nnoremap <C-Left> :bp <CR>
nnoremap <C-Down> :bd <CR>
nnoremap <C-Up> :b 
" Fix syntax highlighting buffer
map <F12> :syntax sync fromstart <CR>
" NerdTree
map <C-n> :NERDTreeToggle<CR>


" terminal settings
:tnoremap <Esc> <C-\><C-n>  " ecape mapping
:tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" COC tab completion
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
