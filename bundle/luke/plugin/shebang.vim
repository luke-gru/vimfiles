if has("ruby")

  command! SB call She_Bang()
  function! She_Bang()
    ruby << EEOOFF
    class Buffer

      def initialize
        @buf = VIM::Buffer.current
        @firstline = @buf[1]
      end

      def parse_shebang
        if @firstline =~ /\A#!\/(usr)?\/bin\/(env)?(\s)?(.*)$/
          @ft = $4
          VIM::set_option("ft=#{@ft}")
          VIM::message("filetype: #{@ft}")
        else
          VIM::set_option('ft?')
          VIM::message("  filetype unchanged")
        end
      end
    end
    buffer = Buffer.new
    buffer.parse_shebang
EEOOFF
  endfunction
endif
