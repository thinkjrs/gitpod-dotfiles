" BAREBONES vimrc 
"
" creation - 12/8/2016
" addition - 12/22/2016 
" addition - 03/21/2017
" addition - 07/05/2017
" addition - 11/21/2017
" addition - 12/14/2017
" barebones - 7/06/2019
" reduce color line - 05/27/2020
" remove excess - 02/15/2022

" Use Vim settings rather than Vi settings
set nocompatible

" Make backspace normal
set backspace=indent,eol,start

" Syntax highlighting
syntax on
filetype plugin on

" Show line numbers
set number

" Allow hidden buffers, don't limit 1 file per window/split
set hidden

" Set default Vim terminal window size to account for line number spacing
" set lines=24 columns=83

" Restrict usage of write/execution shell commands
set secure

" Search down into subfolders and provide tab-completion for file-tasks
set path+=**
set tabstop=4
set shiftwidth=4
set expandtab
" Attempt to fix tmux/gnome-terminal color differences in Vim
set background=dark

" Features for additional syntax highlighting pluggin
"let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1

" Set default color 
colorscheme industry 

" Alter line numbers and background
hi Normal ctermbg=none
hi LineNr ctermfg=blue

" Add a color column at max line len
hi ColorColumn ctermbg=darkgrey

" Adjust netrw:
" Make smaller and rid banner
" from here: https://shapeshed.com/vim-netrw/
let g:netrw_banner = 0
let g:netrw_winsize = 25
