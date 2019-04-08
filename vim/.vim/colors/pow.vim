" Vim color file
" Maintainer:	Jacob Allen	<jdallen03@gmail.com>

set background=dark
set t_Co=256
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="pow"

let python_highlight_all = 1
let c_gnu = 1

" Define regex match for trailing whitespace
" syn match ExtraWhitespace /\s\+$\| \+\ze\t/


hi Normal	ctermfg=250	ctermbg=None    cterm=None   guibg=black
hi Cursor       ctermfg=Red     ctermbg=None       cterm=None
hi SpecialKey	ctermfg=87      ctermbg=None       cterm=None
hi Directory	ctermfg=76      ctermbg=None       cterm=None
hi ErrorMsg     ctermfg=124     ctermbg=White      cterm=None
hi PreProc	ctermfg=199     ctermbg=None       cterm=None
hi Search	ctermfg=232     ctermbg=214        cterm=None
hi Type		ctermfg=51      ctermbg=None       cterm=None
hi Statement	ctermfg=34      ctermbg=None       cterm=None
hi Comment	ctermfg=208     ctermbg=None       cterm=None
hi Identifier	ctermfg=129     ctermbg=None       cterm=None
hi DiffText	ctermfg=88      ctermbg=250        cterm=None
hi Constant	ctermfg=196     ctermbg=None       cterm=None
hi Todo         ctermfg=233     ctermbg=118        cterm=None
hi Error	ctermfg=233     ctermbg=124        cterm=None
hi Special	ctermfg=240     ctermbg=None       cterm=None
hi Ignore       ctermfg=220     ctermbg=None       cterm=None
hi Underline    ctermfg=244     ctermbg=None       cterm=None
hi ExtraWhitespace  ctermfg=None ctermbg=208        cterm=None

hi SpellBad	ctermfg=233	ctermbg=196		cterm=None

hi FoldColumn	ctermfg=247     ctermbg=None       cterm=None
hi StatusLineNC ctermfg=247     ctermbg=234        cterm=None
hi StatusLine   ctermfg=247     ctermbg=233        cterm=None
hi VertSplit    ctermfg=247     ctermbg=234        cterm=None

hi LineNr	ctermfg=238     ctermbg=244        cterm=None
hi LineNr	ctermfg=247     ctermbg=235        cterm=None
hi NonText	ctermfg=87      ctermbg=None       cterm=None


hi Pmenu        ctermfg=White    ctermbg=DarkGray    cterm=None
hi PmenuSel     ctermfg=None     ctermbg=Gray        cterm=None
hi PmenuSbar    ctermfg=DarkGray ctermbg=DarkGray    cterm=None
hi PmenuThumb   ctermfg=Gray     ctermbg=Gray        cterm=None

"vim: sw=4
