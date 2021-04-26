set rtp+=~/.fzf

command! LS call ListBuffers()
command! PutParamTest  r!echo "@pytest.mark.parametrize"

"colorscheme desert
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"Don't display swap or compiled python files in the :Ex command
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$'
let g:netrw_banner = 0

hi Folded ctermbg=8
" hi clear SpellBad
" hi SpellBad cterm=undercurl ctermbg=DarkMagenta
" set spell spelllang=en_gb
" set spellfile=~/.vim/en.utf-8.add
" set spell spelllang=en_gb
" set spelllang=en
" set spellfile=$HOME/.vim/spell/en.utf-8.add
"
set nospell
let g:enable_spelunker_vim = 1
let g:spelunker_target_min_char_len = 4
let g:spelunker_check_type = 2
let g:spelunker_highlight_type = 2
let g:spelunker_disable_acronym_checking = 1
hi SyntasticError ctermfg=red
hi SyntasticStyleError ctermbg=241
hi SyntasticWarning ctermbg=214


set t_Co=256
set laststatus=2
set ignorecase
set smartcase

set number
set cursorline

"Always show filename
set showtabline=2
set history=10000

com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
set tags=tags





com! DiffSaved call s:DiffWithSaved()

com! Num echo bufnr('%')
"!python -c \"import sys;a = eval(sys.stdin.read());from json import dumps;print dumps(a);\"
set tabstop=4
set shiftwidth=4
set expandtab
set nofixendofline
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd BufWritePost *.py execute ':Black'
