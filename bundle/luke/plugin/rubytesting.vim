if has('ruby')
  function! Buff_Bouncer()
    ruby << EOF

    class Buff_Bouncer
      bufcount = VIM::Buffer.count
      if bufcount > 24 && VIM::Window.count < 3
        VIM::message("Buff_Bouncer: '> 25 buffers open. Wipe some buffers.'")
        VIM::message("Buffers: #{bufcount}")
        sleep 2
        VIM.command('ls')
      else
        VIM::message("Buffers: #{bufcount}")
      end
    end
EOF
  endfunction
else
  echo "Buff_Bouncer: Your Vim wasn't compiled with Ruby :("
endif
