return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    main = "nvim-treesitter.config",
    opts = {
      install_dir = vim.fn.stdpath("data") .. "/site",
    },
    config = function(_, opts)
      require("nvim-treesitter.config").setup(opts)

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
