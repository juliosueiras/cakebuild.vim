" Vim compiler file
" Compiler:     Cakebuild
" Maintainer:   Julio Tain Sueiras (juliosueiras@gmail.com)
" Last Change:  09 Sep 2015
" Version:      0.0.1

if exists('current_compiler')
  finish
endif

let current_compiler = 'cakebuild'

if exists(':CompilerSet') != 2      " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" default errorformat

CompilerSet errorformat=
    \%*[^\"]\"%f\"%*\\D%l:\ %m,
    \\"%f\"%*\\D%l:\ %m,
    \%f(%l\\,%c):\ %trror\ CS%\\d%\\+:\ %m,
    \%f(%l\\,%c):\ %tarning\ CS%\\d%\\+:\ %m,
    \%f:%l:\ %m,
    \\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,
    \%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',
    \%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',
    \%DMaking\ %*\\a\ in\ %f,
    \%-G%.%#Compilation%.%#,
    \%-G%.%#

" default make
CompilerSet makeprg=./build.sh\ %
"CompilerSet makeprg=make
