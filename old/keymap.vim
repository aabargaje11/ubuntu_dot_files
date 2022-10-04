" File Location: ~/.config/nvim/keymap.vim

" 

" Purpose: Define your custom keymaps here.

"          This example can't demonstrate much, as everyone has different

"          preferences in how they want to interact with their editor.

"          What remains here in the example are generic things that may

"          be useful to anybody.



"""""""""""""""""""

" File Management

"""""""""""""""""""

" Save.

map <C-s> :w<CR>

imap <C-s> <ESC>:w<CR>



" Copy / Paste out / into vim

noremap <leader>y "+y

noremap <leader>p "+p



" Search

nmap <C-t> :Files<CR>

nmap <C-f> :Ag<CR>

" Clears Active in-file Search (performed via '/')

nnoremap <silent> <CR> :noh<CR><CR>



""""""""""""""""""

" Pane Management

""""""""""""""""""

" Convert Pane to Terminal

nnoremap <C-y> :terminal<CR>



" Creating Panes

" top to bottom = up, left, down, right

nnoremap <leader>[REDACTED] :leftabove new<CR>

nnoremap <leader>[REDACTED] :leftabove vnew<CR>

nnoremap <leader>[REDACTED] :rightbelow new<CR>

nnoremap <leader>[REDACTED] :rightbelow vnew<CR>



" Switching Panes

" top to bottom = up, left, down, right

nnoremap <A-[REDACTED]> <C-w><C-k>

nnoremap <A-[REDACTED]> <C-w><C-h>

nnoremap <A-[REDACTED]> <C-w><C-j>

nnoremap <A-[REDACTED]> <C-w><C-l>





""""""""""""""""""""

" Spell Checking

""""""""""""""""""""

nnoremap <F2> :setlocal spell! spelllang=en_us<CR>



"""""""""""""""""""""

" Working with Code

"""""""""""""""""""""

" NOTE: C-_ is the same as C-/

" gc in visual mode

map <C-_> gcc



" Move Lines Up/Down

nnoremap <C-j> :move+1<CR>

nnoremap <C-k> :move-2<CR>
