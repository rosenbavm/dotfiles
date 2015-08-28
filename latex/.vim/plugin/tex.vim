" General settings
let g:tex_flavor='latex'
let g:tex_indent_brace=0
let g:Tex_Folding=0
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='/usr/bin/latexmk'
let g:Tex_BIBINPUTS='/home/ryan/texmf/bibtex/bib/'
let g:Tex_IgnoredWarnings=
			\"Underfull\n".
			\"Overfull\n".
			\"specifier changed to\n".
			\"You have requested\n".
			\"Missing number, treated as zero.\n".
			\"There were undefined references\n".
			\"Citation %.%# undefined\n".
			\"may have changed. Rerun to get cross"
let g:Tex_IgnoreLevel=8
let g:Tex_ViewRuleComplete_pdf='/usr/bin/zathura --fork $*.pdf &> /dev/null'
au BufRead *.tex set textwidth=80
au BufRead *.tex set wrap
au BufRead *.tex set spell
au BufRead *.tex set formatoptions=tcqajlwb
au BufRead *.tex nmap <C-K>k :w<CR>:silent! call Tex_RunLaTeX()<CR>
au BufRead *.tex nmap <C-K>i :call Tex_ViewLaTeX()<CR>
au BufRead *.tex set grepprg=grep\ -nH\ $*
" Environment macros
au VimEnter *.tex call IMAP('LLD',"\\[\<CR><++>\<CR>\\]<++>",'tex')
au VimEnter *.tex call IMAP('EAL',"\\begin{align*}\<CR><++>\<CR>\\end{align*}<++>",'tex')
au VimEnter *.tex call IMAP('EML',"\\begin{multline*}\<CR><++>\<CR>\\end{multline*}<++>",'tex')
au VimEnter *.tex call IMAP('ETH',"\\begin{theorem}\<CR>\\thlabel{<++>}\<CR><++>\<CR>\\end{theorem}<++>", 'tex')
au VimEnter *.tex call IMAP('ELE',"\\begin{lemma}\<CR>\\thlabel{<++>}\<CR><++>\<CR>\\end{lemma}<++>",'tex')
au VimEnter *.tex call IMAP('EPR',"\\begin{proposition}\<CR>\\thlabel{<++>}\<CR><++>\<CR>\\end{proposition}<++>",'tex')
au VimEnter *.tex call IMAP('ECO',"\\begin{corollary}\<CR>\\thlabel{<++>}\<CR><++>\<CR>\\end{corollary}<++>",'tex')
au VimEnter *.tex call IMAP('EEX',"\\begin{example}\<CR>\\thlabel{<++>}\<CR><++>\<CR>\\end{example}<++>",'tex')
au VimEnter *.tex call IMAP('EEE',"\\begin{exercise}\<CR>\\thlabel{<++>}\<CR><++>\<CR>\\end{exercise}<++>",'tex')
au VimEnter *.tex call IMAP('EDN',"\\begin{definition}\<CR>\\thlabel{<++>}\<CR><++>\<CR>\\end{definition}<++>",'tex')
au VimEnter *.tex call IMAP('ERE',"\\begin{remark}\<CR><++>\<CR>\\end{remark}<++>",'tex')
au VimEnter *.tex call IMAP('EPF', "\\begin{proof}\<CR><++>\<CR>\\end{proof}<++>",'tex')
au VimEnter *.tex call IMAP('ECD', "\\begin{tikzcd}\<CR><++>\<CR>\\end{tikzcd}<++>",'tex')
" Common macros
au VimEnter *.tex call IMAP('NN',"\\N",'tex')
au VimEnter *.tex call IMAP('ZZ',"\\Z",'tex')
au VimEnter *.tex call IMAP('QQ',"\\Q",'tex')
au VimEnter *.tex call IMAP('RR',"\\R",'tex')
au VimEnter *.tex call IMAP('CC',"\\C",'tex')
au VimEnter *.tex call IMAP('OO',"\\O",'tex')
au VimEnter *.tex call IMAP('HH',"\\H",'tex')
au VimEnter *.tex call IMAP('FF',"\\F",'tex')
au VimEnter *.tex call IMAP('PP',"\\P",'tex')
au VimEnter *.tex call IMAP('`i',"\\iota",'tex')
au VimEnter *.tex call IMAP('`o',"\\omega",'tex')
" Brackets
au VimEnter *.tex call IMAP('||',"\\left| <++> \\right|<++>",'tex')
au VimEnter *.tex call IMAP('<>',"\\left\\langle <++> \\right\\rangle<++>",'tex')
au VimEnter *.tex call IMAP('.|',"\\left. <++> \\right|<++>",'tex')
