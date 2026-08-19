return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    main = "nvim-treesitter.config",
    opts = {
      install_dir = vim.fn.stdpath("data") .. "/site",
    },
    config = function(_, opts)
      require("nvim-treesitter.config").setup(opts)

      -- Neovim 0.12 no longer auto-starts treesitter; kick it off per filetype.
      -- pcall so filetypes without a parser (toggleterm, text, ...) don't error.
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          if vim.bo.buftype == "" then
            pcall(vim.treesitter.start)
          end
        end,
      })
    end,
  },
}
