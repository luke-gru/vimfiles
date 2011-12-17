let g:lone_line_warnings = 1

" long line warnings (if g:long_line_warnings is 1)
if exists("g:long_line_warnings") && g:long_line_warnings
  set statusline+=%{StatuslineLongLineWarning()}

  " recalculate the long line warning when idle and after saving
  augroup long_lines
    autocmd!
    autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning
  augroup END
endif

function! ToggleLongLineWarnings()
  let l:on_msg  = "Long line warnings: on"
  let l:off_msg = "Long line warnings: off"
  if exists("g:long_line_warnings") && g:long_line_warnings
    let g:long_line_warnings = 0
    echomsg l:off_msg
  elseif exists("g:long_line_warnings")
    let g:long_line_warnings = 1
    echomsg l:on_msg
  else
    let g:long_line_warnings = 1
    echomsg l:on_msg
  endif
endfunction
command! -nargs=0 LLW call ToggleLongLineWarnings()

" Return a warning for 'long lines' where 'long' is either &textwidth or 80
" (if no &textwidth is set).

" Return '' if no long lines.
" Return '[#x,my,$z] if long lines are found, were x is the number of long
" lines, y is the median length of the long lines and z is the length
" of the longest line.
function! StatuslineLongLineWarning()
  if !exists("b:statusline_long_line_warning")
    let long_line_lens = s:LongLines()

    if len(long_line_lens) > 0
      let b:statusline_long_line_warning = "[" .
            \ '#' . len(long_line_lens) . "," .
            \ 'm' . s:Median(long_line_lens) . "," .
            \ '$' . max(long_line_lens) . "]"
    else
      let b:statusline_long_line_warning = ""
    endif
  endif
  return b:statusline_long_line_warning
endfunction

" Return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
  let threshold = (&tw ? &tw : 80)
  let spaces = repeat(" ", &ts)

  let long_line_lens = []

  let i = 1
  while i <= line("$")
    let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
    if len > threshold
      call add(long_line_lens, len)
    endif
    let i += 1
  endwhile

  return long_line_lens
endfunction

" Find the median of the given array of numbers
function! s:Median(nums)
  let nums = sort(a:nums)
  let l = len(nums)

  if l % 2 == 1
    let i = (l-1) / 2
    return nums[i]
  else
    return (nums[l/2] + nums[(l/2)-1]) / 2
  endif
endfunction
