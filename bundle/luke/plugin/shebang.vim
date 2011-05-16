if has("ruby")

  command! SB call She_Bang()
  function! She_Bang()
    ruby << EOF
    class Shebang

      def initialize
        @buf = VIM::Buffer.current
        @firstline = @buf[1]
      end

      def change_filetype
        if @firstline =~ /\A#!\/(usr)?\/bin\/(env)?(\s)?(.*)$/
          @match = $4
          VIM::set_option("ft=#{@match}")
          VIM::set_option('ft?')
        else
          VIM::set_option('ft?')
          VIM::message("  filetype unchanged")
        end
      end
    end
    buffer = Shebang.new
    buffer.change_filetype
EOF
  endfunction

endif
