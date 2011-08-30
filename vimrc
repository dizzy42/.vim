call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Enable display of hidden characters
set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" handling whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" 2 spaces on <tab>
set ts=2 sts=2 sw=2 expandtab


