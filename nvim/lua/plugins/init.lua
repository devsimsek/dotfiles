-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Theme
  { "rose-pine/neovim", name = "rose-pine" },

  -- LSP + completion stack
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Navigation/finding
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim" },

  -- Load our config modules
  { import = "plugins.editorconfig" },
  { import = "plugins.themes" },
  { import = "plugins.lsp" },
  { import = "plugins.completion" },
  { import = "plugins.treesitter" },
  { import = "plugins.navigation" },
  { import = "plugins.explorer" },
  { import = "plugins.git" },
  { import = "plugins.ui" },
  { import = "plugins.formatting" },
  { import = "plugins.dashboard" },
  { import = "plugins.comment" },
  { import = "plugins.surround" },
  { import = "plugins.todo" },
  { import = "plugins.trouble" },
  { import = "plugins.sessions" },
  { import = "plugins.terminal" },
  { import = "plugins.go" },
})

