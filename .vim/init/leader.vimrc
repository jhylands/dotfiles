imap E$$ ∃
imap \E$$ ∄
imap A$$ ∀
imap >=$$ ≥
imap <=$$ ≤
imap ==$$ ≡
imap sqrt$$ √
imap sum$$ ∑
imap intergrate$$ ∫
imap and$$ ∧
imap or$$ ∨
imap =>$$ ⇒
imap up$$ ↑
imap so$$ ∴
imap in$$ ∈
imap IN$$ ∉
imap +-$$ ±
imap JJ <Esc>:!python ~/.vim/caps.py<CR><CR>
noremap <F5> :Vex!
nmap <F6> :tabnew<CR>:Ex<CR>
nmap <F12> :Ex<CR>
nnoremap <C-F> /\c
nnoremap `1 jj
nnoremap t "=strftime("%c")<CR>P
"nnoremap <C-R> :%s/
vnoremap // y/<C-R>"<CR>
vnoremap /? y?<C-R>"<CR>
imap jj <Esc>
vnoremap /f y :exec "grep -rl " getreg(0) "*"<CR>
nnoremap } 
"Comment out or uncomment
vmap c gc
vmap <tab> >
nmap yy :let @+=@"<CR>
nmap y% :let @+=@%<CR>
"1. Whole lines						|i_CTRL-X_CTRL-L|
inoremap <C-@>l 

"2. keywords in the current file				|i_CTRL-X_CTRL-N|
inoremap <C-@>n 
"3. keywords in 'dictionary'				|i_CTRL-X_CTRL-K|
inoremap <C-@>k 
"4. keywords in 'thesaurus', thesaurus-style		|i_CTRL-X_CTRL-T|
inoremap <C-@>t 
"5. keywords in the current and included files		|i_CTRL-X_CTRL-I|
inoremap <C-@>i <C-I>
"6. tags							|i_CTRL-X_CTRL-]|
inoremap <C-@>] <C-]>
"7. file names						|i_CTRL-X_CTRL-F|
inoremap <C-@>f <C-F>
"8. definitions or macros				|i_CTRL-X_CTRL-D|
inoremap <C-@>d <C-D>
"9. Vim command-line					|i_CTRL-X_CTRL-V|
inoremap <C-@>v <C-V>
"10. User defined completion				|i_CTRL-X_CTRL-U|
inoremap <C-@>u <C-U>
"11. omni completion					|i_CTRL-X_CTRL-O|
inoremap <C-@><space> <C-O>
"12. Spelling suggestions				|i_CTRL-X_s|
inoremap <C-@>s s
"https://livesoncoffee.wordpress.com/2013/04/12/install-tagbar-vim-plugin/
nmap <F8> :TagbarToggle<CR>

" Enable folding
"set foldmethod=indent
nnoremap <space> za
"nmap   zR
"set foldlevel=1

"To untabe, or tab left
inoremap <S-Tab> <C-d>

"Navigation
nmap [1;5D :tabprevious<CR>
nmap [1;5C :tabnext<CR>
nmap [1;6D <C-W><left>
nmap [1;6C <C-W><right>
nmap [1;6B <C-W><down>
nmap [1;6A <C-W><up>
imap [1;5D <Esc>:tabprevious<CR>
imap [1;5C <Esc>:tabnext<CR>
imap [1;6D <Esc><C-W><left>
imap [1;6C <Esc><C-W><right>
imap [1;6B <Esc><C-W><down>
imap [1;6A <Esc><C-W><up>

nmap <silent> [1;3D :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nmap <silent> [1;3C :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
