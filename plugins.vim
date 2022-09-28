" File Location: ~/.config/nvim/plugins.vim

"

" Purpose: Declare what plugins we want to use in our editor.



call plug#begin('~/.local/share/nvim/plugged')

  """""""""""""""""

  " Syntax / Theme

  Plug 'joshdick/onedark.vim'



  """""""""""""""""

  " Editor

  """""""""""""""""

  Plug 'ntpeters/vim-better-whitespace'

  autocmd BufWritePre * StripWhitespace



  " File / Project Finding



  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  Plug 'junegunn/fzf.vim'



  " File Tree Browser

  Plug 'scrooloose/nerdtree'

  Plug 'Xuyuanp/nerdtree-git-plugin'



  let NERDTreeShowHidden=1 " This also ignores .gitignore

  let NERDTreeIgnore=['.git$[[dir]]', '.swp', 'dist', 'tmp', 'node_modules', 'bower_components', '.pnp']

  let NERDTreeAutoDeleteBuffer = 1

  let NERDTreeMinimalUI = 1

  let NERDTreeDirArrows = 1



  " Working with code

  Plug 'jiangmiao/auto-pairs'

  let g:AutoPairsFlyMode = 1

  " M-b jumps back

  let g:AutoPairsShortcutJump = ''

  let g:AutoPairsShortcutFastWrap = ''



  Plug 'tpope/vim-surround'

  Plug 'tpope/vim-commentary'



  Plug 'editorconfig/editorconfig-vim'



  " Git Conflict highlighting

  Plug 'rhysd/conflict-marker.vim'



  """"""""""""""""""""

  " Language Servers

  "

  " Debugging:

  "   node -e 'console.log(path.join(os.tmpdir(), "coc-nvim.log"))'

  """"""""""""""""""""

"  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}



  """"""""""""""""""

  "" Status

  """"""""""""""""""

  Plug 'airblade/vim-gitgutter'

  Plug 'vim-airline/vim-airline'

  let g:airline_powerline_fonts = 1



  if !exists('g:airline_symbols')

    let g:airline_symbols = {}

  endif

  let g:airline_symbols.space = "\ua0"

  let g:airline#extensions#tabline#enabled = 0

  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'



  """""""""""""""""""""

  " Syntax Support



  " Individual syntax plugins not needed, because provided by polyglot

  Plug 'sheerun/vim-polyglot'

  " handled below

  let g:polyglot_disabled = ['css', 'ts', 'typescript', 'js', 'javascript', 'hbs', 'json']



  " CSS

  Plug 'alexlafroscia/postcss-syntax.vim'



  " Typescript syntax

  Plug 'leafgarland/typescript-vim'



  " JavaScript Syntax

  Plug 'pangloss/vim-javascript'

  let g:javascript_plugin_jsdoc = 1



  " Ember template highlighting

  Plug 'joukevandermaas/vim-ember-hbs'



  " Nested syntax highlighting

  " needed for js/ts named template literals

  " and markdown.

  Plug 'Quramy/vim-js-pretty-template'



call plug#end()
