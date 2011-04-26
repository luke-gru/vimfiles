if has("ruby")
function! She_Bang()
  let ft = &ft
  ruby << EOF

  buf = VIM::Buffer.current
  firstline = buf[1]
  if firstline =~ %r(\A#!)
    return
  else
  VIM::set_option('ft?')
  end
EOF
endfunction
endif
