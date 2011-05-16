"make interactive"

function! FilterToScratch(script)
    let TempFile = tempname()
    let SaveModified = &modified
    exe 'w ' . TempFile
    let &modified = SaveModified
    exe 'split ' . TempFile
    exe '%! ' . a:script
endfunction

"from:
"http://superuser.com/questions/266934/how-to-pass-vim-buffer-contents-through-shell-command-and-capture-the-output-to-a"
