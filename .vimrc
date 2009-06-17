set t_Co=256
syntax on
set history=50
set viminfo=/10,'10,r/mnt/zip,r/mnt/floppy,f0,h,\"100
set gdefault
set ignorecase
set smartcase
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set list listchars=tab:»·,trail:·
" I regularly paste whole lines, this screws that up =(
"set number

colorscheme ir_black

nmap <F1> <Esc>

" Puppet syntax hiliting
au BufRead,BufNewFile *.pp set filetype=puppet
au! Syntax puppet source ~/.vim/syntax/puppet.vim

if has("autocmd")
  filetype plugin indent on

  augroup vimrcEx
  au!

  autocmd FileType text setlocal textwidth=78

  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif

  augroup END
else
  set autoindent
end
