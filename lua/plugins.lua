local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  { 'folke/tokyonight.nvim' },      -- theme
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup()
    end,
  },  -- fancy status line
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons', },
  },    -- file browser
  { 'jdhao/better-escape.vim' },    -- jk to enter normal mode, remove delay
  { 'terrortylor/nvim-comment' },
  -- lsp / autocompletion
  { 'nvim-treesitter/nvim-treesitter' },
  { 'neovim/nvim-lspconfig' },                -- setup lsp configurations
  { 'williamboman/mason.nvim' },              -- package manager to install and manage lsp servers (and more)
  { 'williamboman/mason-lspconfig.nvim' },    -- bridges gap between nvim-lspconfig and mason
  { 'hrsh7th/nvim-cmp' },                     -- autocompletion engine
  { 'hrsh7th/cmp-nvim-lsp' },                 -- bridges lsp and cmp
  { 'L3MON4D3/LuaSnip' },                     -- snippets
  { 'saadparwaiz1/cmp_luasnip' },
  { 'rafamadriz/friendly-snippets' },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<A-/>]],
      direction = 'float',
      shell = 'pwsh',
      shading_factor = '-50',
      float_opts = {
        border = 'single',
      }
    },
  },
  {
    -- autopair / format brackets
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },
  {
    -- file browsing
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    -- command mode autocompletion
    'gelguy/wilder.nvim',
    dependencies = { 'roxma/nvim-yarp', 'roxma/vim-hug-neovim-rpc' }
  },
})
