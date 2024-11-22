vim.cmd('set nocompatible " Not compatible with vi.')
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd('set shiftround " When indenting with >>, <<, do to nearest sw.')
vim.cmd('set t_Co=256')
vim.cmd('set background=dark')
vim.cmd('set ruler')
vim.cmd('set title')
vim.cmd('set list " Show me listchars.')
vim.cmd('let mapleader=" "')
vim.cmd("let maplocalleader='\'")
vim.cmd('set report=0 " Always report when changing lines.')
vim.cmd('set more " Pause listings when whole screen is filled.')
vim.cmd('set modelines=5 " Just to make sure.')
--vim.cmd('set pastetoggle=<F2>')
vim.cmd('set winaltkeys=no " Allow use of <alt> for mappings by disabling window alt.')
--vim.cmd('set tags=tags;,tags')
vim.cmd('set textwidth=0 " Overridden local to buffer for certain filetypes,')
vim.cmd('set virtualedit=block')
vim.cmd('set nojoinspaces')
vim.cmd('set hls " Highlight search.')
vim.cmd('set foldcolumn=auto')
vim.cmd('set foldmethod=marker " Marker folding styles.')
vim.cmd('set iskeyword+=-')
vim.cmd('set showmode')
vim.cmd('set showcmd')
vim.cmd('set showmatch " Matching brackets')
vim.cmd('set magic     " See pattern.txt')
vim.cmd('set autoread  " When a file is changed outside of vim and it\'s in the buffer.')
vim.cmd('set switchbuf=useopen " Jump to first open window that contains the buffer.')
vim.cmd('set lazyredraw    " Don\'t redraw screen when running macros.')
vim.cmd('set matchtime=3   " 3/10 of second paren matches.')
vim.cmd('set wildmenu      " Give me menu for tab completion.')
vim.cmd('set wildmode=full " All I need (and default).')
vim.cmd('set wildcharm=<C-z> " Let me tab a cmdline mapping.')
vim.cmd('set wildignore+=*~')
vim.cmd('set wildignore+=*.DS_Store?,*.o,*.obj,*.exe,*.dll,*.manifest')
vim.cmd('set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg')
vim.cmd('set suffixes+=.git,.hg,.svn,tags " Lower priority for wildmenu.')
vim.cmd('set noerrorbells  " No annoying little vi error noises!')
vim.cmd('set novisualbell')
vim.cmd('set scrolloff=3   " Give me context of 3 lines when at top v bottom of buffer')
vim.cmd('set sidescrolloff=2')
vim.cmd('set timeoutlen=1250')
vim.cmd('set ttimeoutlen=50')
vim.cmd('set nobackup')
vim.cmd('set listchars=tab:>−,trail:−')
vim.cmd('set nowrap     " Don\'t wrap text by default, tw=0.')
vim.cmd('set ai " Auto indent')
vim.cmd('set si " Smart indent')
vim.cmd('set cpoptions+=$ " Compatibility with vi options, when using nmode c or C,')
vim.cmd('" show last changed character with $ instead of its value.')
vim.cmd('set nu " Line numbering')
vim.cmd('set incsearch   " Show search matches incrementally.')
vim.cmd('set ignorecase  " Ignore the case of regexes,')
vim.cmd('set smartcase   " but don\'t ignore them when I type a capital letter.')
vim.cmd('set mousehide  " Hide mouse until it\'s moved.')
vim.cmd('set mouse=a')
vim.cmd('set mousemodel=popup " Windows at least got this right.')
vim.cmd('set bs=2       " Backspace over everything in insert mode')
vim.cmd('set cmdheight=2 " Cmd line height.')
vim.cmd('set path+=.,,./**')
vim.cmd('set laststatus=2  " All windows have status lines')
vim.cmd('set shortmess=at  " To avoid the \'Hit ENTER to continue\' prompt')
vim.cmd('set splitright    " Verti. splits open on the right')
vim.cmd('set splitbelow    " Horiz. splits open below current window')
vim.cmd('set undofile')
vim.cmd('set undodir=/tmp')
vim.cmd('cabbr Ls ls')
vim.cmd('cabbr LS ls')
vim.cmd('cabbr W w')
vim.cmd('cabbr B# b#')

-- Mappings: --
-- Stop highlighting for hlsearch, turn back on w/ next search.
vim.cmd('nnoremap <leader>n :noh<CR>')
vim.cmd('nnoremap <C-\\> "+p') -- clipboard paste normal mode
vim.cmd('inoremap <C-\\> <ESC>"+p$') -- clipboard paste insert mode
vim.cmd('vnoremap <C-y> "+y') -- clipboard yank visual mode
vim.cmd('nnoremap Y y$')
vim.cmd('nnoremap <Leader>s2 :setlocal tabstop=2 shiftwidth=2<CR>')
vim.cmd('nnoremap <Leader>s4 :setlocal tabstop=4 shiftwidth=4<CR>')
vim.cmd('nnoremap <Leader>s8 :setlocal tabstop=8 shiftwidth=8<CR>')

-- fold mappings --
vim.cmd('nnoremap <silent> <CR> za')
-- fold start (closed, open)
vim.cmd('nnoremap <silent> <leader>fc :set foldlevel=0<CR>')
vim.cmd('nnoremap <silent> <leader>fo :set foldlevel=99<CR>')
-- /fold mappings --

vim.cmd('noremap <silent> <F3> <ESC>:e $MYVIMRC<CR>')
vim.cmd('noremap <silent> <F4> <ESC>:so $MYVIMRC<CR>')

-- making [count] newlines below cursor
vim.cmd('nnoremap <leader>; o<ESC>')
-- split, like a reversed J(join)
vim.cmd('nnoremap S i<CR><ESC>')
vim.cmd('nnoremap gI g;I')

-- list toggle
vim.cmd('nnoremap <leader>lt :set list!<CR>:set list?<CR>')
-- see plugin help
vim.cmd('nnoremap <silent> <leader>la :h local-additions<CR>') -- plugin help docs
-- Highlight text I just pasted, compliments gv well.
vim.cmd('nnoremap gV `[v`]')

-- emacs
vim.cmd('cnoremap <C-b> <left>')
vim.cmd('cnoremap <C-f> <right>')
vim.cmd('cnoremap <C-a> <C-b>')

-- indenting, useful stuff..
vim.cmd('vnoremap < <gv')
vim.cmd('vnoremap > >gv')

vim.cmd('nnoremap <silent> <leader>1 :tabp<CR>')
vim.cmd('nnoremap <silent> <leader>2 :tabn<CR>')

vim.cmd('nnoremap <silent> <C-w>9 <C-w>100h') -- go to leftmost window (like <ctrl-w t>)
vim.cmd('nnoremap <silent> <C-w>0 <C-w>100l') -- go to rightmost window (like <ctrl-w b>)
vim.cmd('nnoremap <silent> <leader>9 <C-w>100h') -- go to leftmost window
vim.cmd('nnoremap <silent> <leader>0 <C-w>100l') -- go to rightmost window
vim.cmd('nnoremap <silent> <C-w>. <C-w>>') -- make window wider to right
vim.cmd('nnoremap <silent> <C-w>, <C-w><') -- make window wider to left
vim.cmd('nnoremap <silent> <leader>. 5<C-w>>') -- make window 5 wider to right
vim.cmd('nnoremap <silent> <leader>, 5<C-w><') -- make window 5 wider to left

-- *omnicompletion*
-- Default i_CTRL-o I find useless, so map it to omnicomplete
vim.cmd('inoremap <silent> <C-o> <C-x><C-o>')

-- Preview markdown in browser (linux).
vim.cmd('nnoremap <leader>pm :w!<CR>:!markdown % > %.html && sensible-browser file://%:p.html<CR><CR>')

-- terminal mappings
vim.cmd([[
    " return to normal mode
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-c> <C-\><C-n>
]])

-- Functions
vim.cmd([[
  " Locate and return character above current cursor position regardless of
  " blank lines. Taken from this vim-scripting tutorial:
  " http://www.ibm.com/developerworks/linux/library/l-vim-script-1/index.html
  function! LookUpOrDown(dir)
    if a:dir ==# 'down'
      let pat = 'nW'
    elseif a:dir ==# 'up'
      let pat = 'bnW'
    else
      throw "LookUpOrDown: dir must be one of ('up', 'down')"
    endif
    " Locate current column and preceding line from which to copy.
    let column_num      = virtcol('.')
    let target_pattern  = '\%' . column_num . 'v.'
    let target_line_num = search(target_pattern . '*\S', pat)

    " If target line found, return vertically copied character.
    if !target_line_num
      return ""
    else
      return matchstr(getline(target_line_num), target_pattern)
    endif
  endfunction

  " Reimplement CTRL-Y and CTRL-E in insert mode...
  inoremap <silent>  <C-Y>  <C-R><C-R>=LookUpOrDown("up")<CR>
  inoremap <silent>  <C-E>  <C-R><C-R>=LookUpOrDown("down")<CR>


  function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = virtcol(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position.
    let @/=_s
    call cursor(l, c)
  endfunction

  " reindent whole file
  nnoremap <leader>= :call Preserve("normal gg=G")<CR>


  function! OpenURL(url)
    if has("win32")
      exe "!start cmd /cstart /b ".a:url.""
    elseif $DISPLAY !~ '^\w'
      exe "silent !sensible-browser \"".a:url."\""
    else
      exe "silent !sensible-browser -T \"".a:url."\""
    endif
    redraw!
  endfunction
  command! -nargs=1 OpenURL :call OpenURL(<q-args>)

  " Open URL under cursor in browser.
  nnoremap gB :OpenURL <cfile><CR>
  nnoremap gG :OpenURL http://www.google.com/search?q=<cword><CR>
  nnoremap gW :OpenURL
        \ http://en.wikipedia.org/wiki/Special:Search?search=<cword><CR>
]])

-- Autocommands --
vim.cmd([[
  augroup html
    au!
    autocmd FileType html setl textwidth=0 nowrap
  augroup END

  augroup data
    au!
    au FileType xml,xsd,xslt setl ai et sw=2 sts=2 ts=2
    " rss as xml
    au BufReadPost *.rss set ft=xml
    au BufReadPost *.yml setl expandtab
    au BufReadPost *.yaml setl expandtab
  augroup END

  augroup c_like
    au!
    au FileType cpp,c,cs,java setl ai et sta sw=4 sts=4 cin
  augroup END

  augroup ft_ruby
    au!
    au BufRead,BufNewFile Gemfile,*.ru,Vagrantfile set ft=ruby
    au FileType ruby,eruby,rails setl keywordprg=ri iskeyword+=?
  augroup END

  " last cursor position in buffer
  augroup cursor_pos
    au!
    au BufReadPost *
          \ if line("'\"") > 0 && line ("'\"") <= line("$") |
          \   exe "normal! g'\"" |
          \ endif
  augroup END
]])
-- /Autocommands --

-------------------------------------------------------
------------------------Plugins------------------------
-------------------------------------------------------

require("config.lazy") -- package manager
require("catppuccin") -- colorscheme

-- Telescope --
local builtin = require('telescope.builtin') -- fuzzy finder
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
-- /Telescope --

-- Treesitter --
require('nvim-treesitter.configs').setup({ -- highlight/indent
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "make", "lua", "ruby", "rust", "go", "vim", "vimdoc", "sql", "toml", "markdown", "markdown_inline" },
  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = {},
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
      lang = lang -- disable warning
      local max_filesize = 100 * 1024 -- 100 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
    },
    indent = {
      enable = true,
    },
})
-- /Treesitter --

require("lualine").setup()

-- LSP --
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ruby_lsp", "clangd", "rubocop" },
})
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.ruby_lsp.setup({})
lspconfig.clangd.setup({})
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
      local opts = { buffer = ev.buf }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n', 'K',  vim.lsp.buf.hover, opts)
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
    end,
})
vim.cmd([[
nnoremap <leader>ls :LspStart<CR>
nnoremap <leader>lx :LspStop<CR>
nnoremap <leader>lr :LspRestart<CR>
nnoremap <leader>li :LspInfo<CR>
nnoremap <leader>ll :LspLog<CR>
]])
-- /LSP --
vim.cmd('colo catppuccin')

-------------------------------------------------------
-----------------------/Plugins------------------------
-------------------------------------------------------

-- Add some vimscript pathogen bundles to &rtp and set them up
vim.cmd([[
filetype plugin on
filetype indent on
" I only add this directory so all the doc dirs will be in &rtp
call pathogen#infect("$HOME/.config/nvim/bundle")
call pathogen#infect("$HOME/.config/nvim/bundle/buf-explorer")
call pathogen#infect("$HOME/.config/nvim/bundle/nerdcommenter")
call pathogen#infect("$HOME/.config/nvim/bundle/vim-chroma")
" Only turn on these plugins
runtime! bufexplorer.vim
runtime! NERD_commenter.vim
let g:NERDTreeMapCWD = 'cD' " must be before load of nerdtree
runtime! autoload/nerdtree.vim
runtime! autoload/nerdtree/ui_glue.vim
runtime! plugin/NERD_tree.vim
runtime! vim-chroma.vim
call pathogen#helptags()
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>be :BufExplorer<CR>
nnoremap <silent> <leader>h :call g:ChromaHighlight()<CR>
let g:bufExplorerShowTabBuffer=1 " show buffers per tab by default
let g:NERDTreeChDirMode = 3
let g:NERDTreeUseTCD = 1 " use :tcd instead of :cd when using C in nerdtree
let g:NERDTreeMinimalUI=1 " don't show 'Press ? For help' line
augroup nerdtree
  au!
  au FileType nerdtree syntax on
  au FileType nerdtree source $HOME/.config/nvim/bundle/nerdtree/syntax/nerdtree.vim
augroup END
]])
