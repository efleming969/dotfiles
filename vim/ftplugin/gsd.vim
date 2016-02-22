" ftplugin/gsd.vim

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

setlocal foldmethod=indent

" gitting stuff done scripts
" ====================================================================
function! ConsistentShuffle(alphabet, salt)

  let v = 0
  let p = 0
  let i = len(a:alphabet) - 1
  let alphabet = a:alphabet

  while i > 0
    let v = v % len(a:salt)
    let integer = char2nr(a:salt[v])
    let p = p + integer
    let j = (integer + v + p) % i

    let temp = alphabet[j]

    let alphabet = strpart(alphabet, 0, j) . alphabet[i] . strpart(alphabet, j + 1)
    let alphabet = strpart(alphabet, 0, i) . temp . strpart(alphabet, i + 1)

    let v = v + 1
    let i = i - 1

  endwhile

  return alphabet

endfunction

function! ToHex(alphabet, input)
  let hash = ""
  let alphabetLength = len(a:alphabet)
  let input = a:input

  while input > 0
    let hash = a:alphabet[ input % alphabetLength ] . hash
    let input = input / alphabetLength
  endwhile

  return hash

endfunction

function! GenerateId()
  let salt = strftime("%c")
  let alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  let alphabet = ConsistentShuffle( alphabet, salt )

  let g:gsd_gen_count = 100000 + g:gsd_gen_count

  return ToHex( alphabet, g:gsd_gen_count )

endfunction

let g:gsd_gen_count = 0

:nnoremap <Leader>gi "=GenerateId()<CR>P
:inoremap <Leader>gi "=GenerateId()<CR>P


