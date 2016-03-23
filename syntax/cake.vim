" Vim syntax file
" Language:         Cake Build
" Maintainer:       Julio Tain Sueiras(juliosueiras@gmail.com)
" Filenames:        *.cake

if exists('b:current_syntax')
    finish
endif

let s:cake_cpo_save = &cpo
set cpo&vim

syn keyword cakeFunction MSBuild XBuild IsRunningOnWindows  Argument SetConfiguration Directory NuGetRestore CleanDirectory + =

syn keyword cakeKeyword  Task WithCriteria Does IsDependentOn OnError ContinueOnError ReportError Finally Setup Teardown TaskSetup TaskTeardown RunTarget

syn keyword cakeBuiltIn bool byte sbyte char decimal double float int uint long ulong object short ushort string void class struct enum interface

syn match cakeAddin "#addin"

syn keyword cakeConditional else if switch
syn keyword cakeRepeat break continue do for foreach goto return while

syn region cakeString start=/\v"/ skip=/\v\\./ end=/\v"/
syn region cakeComment start=/\v\// end=/$/

hi def link cakeKeyword Keyword
hi def link cakeAddin Keyword
hi def link cakeBuiltIn Keyword
hi def link cakeRepeat Repeat
hi def link cakeConditional Conditional
hi def link cakeFunction Function
hi def link cakeString String
hi def link cakeComment Comment

let b:current_syntax = 'cake'

let &cpo = s:cake_cpo_save
unlet s:cake_cpo_save
