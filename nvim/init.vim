set number 
set shiftwidth=4
set shellcmdflag=-ic
set smartindent
set cindent
set tabstop=4
set mouse=a
set clipboard+=unnamedplus
set relativenumber


:command WQ wq
:command Wq wq
:command W w
:command Q q

syntax on

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap << <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
nnoremap <C-n> :NERDTreeToggle<CR>

autocmd FileType c inoremap ;; <ESC>A;<ESC>o
autocmd FileType c inoremap ;: <ESC>A;<ESC>
autocmd FileType c map ;: A;<ESC>j
autocmd FileType c inoremap fori   for(i=0;i<N;i++)<ESC>o{<enter><tab><enter>}<ESC>ki<tab>
autocmd FileType c inoremap forj   for(j=0;j<N;j++)<ESC>o{<enter><tab><enter>}<ESC>ki<tab>
autocmd FileType c inoremap if(   if()<ESC>o{<enter><tab><enter>}<ESC>kkk$i
autocmd FileType c inoremap else(  else<ESC>o{<enter><tab><enter>}<ESC>ki<tab>
autocmd FileType c inoremap wh(   wh()<ESC>o{<enter><tab><enter>}<ESC>kkk$i
autocmd FIleType c inoremap do(    do<ESC>o{<enter><tab><enter>}while();<ESC>ki<tab>

:vmap <Tab> >

 call plug#begin('~/.config/nvim/autoload/plugged')
  
     " Better Syntax Support
     Plug 'sheerun/vim-polyglot'

     Plug 'vim-airline/vim-airline'
     " File Explorer
     Plug 'scrooloose/NERDTree'
     " Auto pairs for '(' '[' '{'
     Plug 'jiangmiao/auto-pairs'

		 Plug 'joshdick/onedark.vim'

		 " Stable version of coc
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
 call plug#end()

autocmd vimenter * colorscheme onedark

