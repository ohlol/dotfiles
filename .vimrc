syntax on
set history=50
set viminfo=/10,'10,r/mnt/zip,r/mnt/floppy,f0,h,\"100
set autoindent
set gdefault
set ignorecase
set smartcase
set ts=4

nmap <F1> <Esc>

" Puppet syntax hiliting
au BufRead,BufNewFile *.pp set filetype=puppet
au! Syntax puppet source ~/.vim/syntax/puppet.vim
