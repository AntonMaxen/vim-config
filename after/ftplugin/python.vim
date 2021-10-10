"autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"autocmd FileType python map <buffer> <F5> :w !python3<CR>
"autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
map <buffer> <F5> :w !python3<CR>

setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal autoindent
setlocal expandtab

setlocal indentkeys-=<:>
setlocal indentkeys-=:

setlocal colorcolumn=80
setlocal path=.,**
setlocal wildignore=*.pyc,*/venv/*

":s/\(|\|\\\)/\\\1/g

"set include=^\\s*\\(from\\\|import\\)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\| as\\)
"
"function! PyInclude(fname)
"		let parts = split(a:fname, ' import ')
"		let l = parts[0]
"		if len(parts) > 1
"				let r = parts[1]
"				let joined = join([l, r], '.')
"				let fp = substitute(joined, '\.', '\', 'g') . '.py'
"				let found = glob(fp, 1)
"				if len(found) > 1:
"					return found
"				endif
"		endif
"		return substitute(l, '\.', '\', 'g') . '.py'
"endfunction
"
"setlocal includeexpr=PyInclude(v:fname)


