
let g:autopep8_ignore="E501"
let g:tmuxcomplete#trigger = 'omnifunc'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'eslint '
let g:syntastic_haskell_checkers = ['hlint', 'ghc_mod']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_yaml_yamllint_args = '-d "{extends: relaxed, rules: {line-length: {max: 520}}}" ' 
let g:syntastic_python_checkers = ['python', 'flake8', 'mypy']
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_mypy_args='--ignore-missing-imports --follow-imports silent --allow-untyped-globals --no-warn-no-return'

command Soff let g:syntastic_quiet_messages = { 'type': 'style' } | SyntasticCheck
command  Son let g:syntastic_quiet_messages = {} | SyntasticCheck
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
