return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- See FORMATTERS.md for installation instructions
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "black", "isort" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          typescriptreact = { "prettier" },
          javascriptreact = { "prettier" },
          html = { "prettier" },
          css = { "prettier" },
          scss = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          markdown = { "prettier" },
          c_sharp = { "csharpier" },
          php = { "pint" },
          tf = { "terraform_fmt" },
          terraform = { "terraform_fmt" },
          ["terraform-vars"] = { "terraform_fmt" },
          hcl = { "terraform_fmt" },
          text = { "prettier" },
          go = { "goimports", "gofmt" },
          c = { "clang_format" },
          cpp = { "clang_format" },
          rust = { "rustfmt" },
          sh = { "shfmt" },
          bash = { "shfmt" },
          zsh = { "shfmt" },
          dockerfile = { "injected" },
          toml = { "taplo" },
          sql = { "sqlformat" },
        },
        format_on_save = {
          timeout_ms = 3000,
          lsp_fallback = true,
        },
      })

      vim.keymap.set("n", "<leader>fm", function()
        require("conform").format()
      end, { noremap = true, silent = true, desc = "Format buffer" })
    end,
  },
}
