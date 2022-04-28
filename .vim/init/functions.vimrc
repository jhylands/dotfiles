
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction

function! ListBuffers()
    redir => ls_output
    silent exec 'ls'
    redir END
    let list = substitute(ls_output, '"\(\f*\)*/\(\f*\)"' , '\=submatch(2)',    "g")
    echo list 
endfunction


function! ColumnMeThis()
    set nowrap
    let width = 20
    let fill = repeat(' ', width)
    execute '%s/\([^,]*\),\=/\=strpart(submatch(1).fill, 0, width)/ge'
    execute '%s/\s\+$//ge'
endfunction

