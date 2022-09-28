" File Location: ~/.config/nvim/init.vim

set nocompatible

so ~/.config/nvim/plugins.vim

so ~/.config/nvim/editor.vim

so ~/.config/nvim/functions.vim

so ~/.config/nvim/keymap.vim

set clipboard=unnamedplus

call plug#begin()

"so ~/.config/nvim/coc.vim
Plug 'neovim/nvim-lspconfig' " Language Server
Plug 'hrsh7th/nvim-compe' " Autocomplete stuff

call plug#end()


source ~/.config/nvim/lsp-config.vim
luafile ~/.config/nvim/compe-config.lua

" Language Servers
luafile ~/.config/nvim/python-lsp.lua

autocmd BufNewFile,BufRead *.hbs setfiletype handlebars
autocmd FileType javascript setlocal foldmethod=syntax
call EnableTemplateLiteralColors()
