source ~/.config/nvim/settings.vim

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'dylanaraps/wal.vim' " pywal colorscheme
Plug 'neovim/nvim-lspconfig' " Language Server
Plug 'hrsh7th/nvim-compe' " Autocomplete stuff
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'akinsho/toggleterm.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'hashivim/vim-terraform'

call plug#end()

source ~/.config/nvim/mappings.vim
luafile ~/.config/nvim/bindings.lua
luafile ~/.config/nvim/plug-config/toggleterm.lua
luafile ~/.config/nvim/plug-config/dashboard.lua


nnoremap <leader>u :UndotreeShow<CR>

" Language Servers
luafile ~/.config/nvim/plug-config/python-lsp.lua
luafile ~/.config/nvim/plug-config/web-dev-lsp.lua
luafile ~/.config/nvim/plug-config/terraform-ls.lua
" luafile ~/.config/nvim/plug-config/ccls-lsp.lua
" luafile ~/.config/nvim/plug-config/go-lsp.lua

" Treesitter
luafile ~/.config/nvim/plug-config/treesitter.lua

" Configs
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/plug-config/compe-config.lua

" air-line
" let g:airline_theme = 'gruvbox_material'
let g:airline_powerline_fonts = 1

" NERDTree
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowHidden=1

" Snippet
" let g:UltiSnipsExpandTrigger="<leader><tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

set background=dark
" let g:gruvbox_material_background = 'dark'
" let g:gruvbox_material_better_performance = 1

" colorscheme wal
" colorscheme gruvbox-material
colorscheme gruvbox
" colorscheme onedark
" colorscheme cyberpunk
highlight Normal guibg=none
" highlight ColorColumn ctermbg=0 guibg=lightgrey

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
augroup END

" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab 
