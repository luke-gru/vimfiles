-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
-- vim.cmd('echo "lazypath is: ' .. lazypath .. '"')

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, -- colorscheme
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8', -- find files
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
      'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' -- highlighting via AST analysis
    },
    {
      'nvim-lualine/lualine.nvim', -- status line
      dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
      "williamboman/mason.nvim", -- install LSPs/formatters/debuggers/linters
    },
    {
      "williamboman/mason-lspconfig.nvim",
    },
    {
      "neovim/nvim-lspconfig", -- official neovim lsp client config
    },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
