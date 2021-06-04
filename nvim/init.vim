""""""""""""""""""""""""""""""
" Vim Plug
""""""""""""""""""""""""""""""
call plug#begin()
Plug 'dracula/vim',{'as':'dracula'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'chriskempson/base16-vim'
call plug#end()

""""""""""""""""""""""""""""""
" Vim-airline
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
""""""""""""""""""""""""""""""
" airline symbols
""""""""""""""""""""""""""""""
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""
"colorscheme gruvbox-material
colorscheme base16-default-dark
set t_Co=256
set termguicolors

""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""
set number relativenumber
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set wrap linebreak

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

""""""""""""""""""""""""""""""
" C++ highlighting
""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1

""""""""""""""""""""""""""""""
" ultisnips
""""""""""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/plugged/ultisnips/snippets']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
""""""""""""""""""""""""""""""
" Vimtex
""""""""""""""""""""""""""""""
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_complete_enabled = 1
let g:vimtex_complete_recursive_bib = 1
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \}
