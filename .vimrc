execute pathogen#infect()
syntax enable
set autoindent
set nocompatible
filetype plugin on
filetype plugin indent on
syntax on

"custom tab style
set tabstop=4
set softtabstop=4
set shiftwidth=4

"vim airline and ctrl-p settings
set laststatus=2
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:airline#extensions#tabline#enabled=1

"relative line numbers and highlights current line
set relativenumber
set cursorline

"sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
"custom map leader
let mapleader = ","

"searching settings
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

"super undo! shows undo in graph form (which is way cool)
nnoremap <leader>u :GundoToggle<CR>

function! ToggleNumber()
	if (&relativenumber == 1)
		set norelativenumber
		set number
	else
		set nonumber
		set relativenumber
	endif
endfunc

nnoremap <leader>n :call ToggleNumber()<CR>

nnoremap <leader>t :NERDTreeToggle<CR>

autocmd FileType python setlocal expandtab

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
    source ~/.vimrc_background
endif
