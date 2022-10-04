" File Location: ~/.config/nvim/functions.vim

"

" Purpose: define utility functions to use either in the (neo)vim config,

"          or during regular editing.



" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#use-tab-or-custom-key-for-trigger-completion

" use <tab> for trigger completion and navigate to the next complete item

function! s:check_back_space() abort

  let col = col('.') - 1

  return !col || getline('.')[col - 1]  =~ '\s'

endfunction



" Allow for named template literals to be highlighted

" in a different syntax than the main buffer.

" https://github.com/Quramy/vim-js-pretty-template

function EnableTemplateLiteralColors()

  " list of named template literal tags and their syntax here

  call jspretmpl#register_tag('hbs', 'handlebars')



  autocmd FileType javascript JsPreTmpl

  autocmd FileType typescript JsPreTmpl



  " compat with leafgarland/typescript-vim

  autocmd FileType typescript syn clear foldBraces

endfunction
