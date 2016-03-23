" Language:    Cake
" Maintainer:  Julio Tain Sueiras <juliosueiras@gmail.com>
" URL:         http://github.com/juliosueiras/cakebuild.vim
" License:     MIT
"
autocmd BufNewFile,BufRead *.cake set filetype=cake

function! s:DetectCakeBuild()
    if getline(1) =~? '^#!.*\<cake\>'
        set filetype=cake
        set compiler cakebuild
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectCakeBuild()
