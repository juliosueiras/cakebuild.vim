# cakebuild.vim

[![Join the chat at https://gitter.im/juliosueiras/cakebuild.vim](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/juliosueiras/cakebuild.vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Vim Syntax for Cake(https://github.com/cake-build/cake)

Currently this plugin only provide basic syntax for cakebuild file

## Tagbar Support
Add This to your .ctags in your home directory

```
--langdef=cakebuild
--langmap=cakebuild:.cake
--regex-cakebuild=/^.*Task[ \t]*\(\"(.*)\"\)/\1/t,Task/
```

... and add this to your .vimrc
```vim
```vim
let g:tagbar_type_cake = {
    \ 'ctagstype' : 'cakebuild',
    \ 'kinds' : [
        \ 't:Task'
    \ ]
\ }
``````

## Current TODO:
- [ ] Complete Syntax of Cake
- [ ] Integrate C# syntax
- [x] Implement basic compiler profile for cake(still need to make the errorformat for cake)


## Optional TODO:
- [x] Implement basic snippets for cake
- [X] Create a Cake profile for TagBar
- [ ] Integrate OmniSharp(to provide omnicomplete
