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

      -- Neovim 0.12 no longer auto-starts treesitter; kick it off per filetype
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          if vim.bo.buftype == "" then
            vim.treesitter.start()
          end
        end,
      })

      vim.schedule(function()
        local ts = require("nvim-treesitter")
        ts.install({
          "c_sharp", "php", "html", "javascript", "typescript", "tsx",
          "css", "scss", "python", "lua", "json", "yaml", "json5",
          "markdown", "markdown_inline", "terraform", "hcl",
          "go", "gomod", "gowork", "c", "cpp", "rust", "bash",
          "dockerfile", "toml", "sql", "regex", "vim",
        })
      end)
    end,
  },
}
