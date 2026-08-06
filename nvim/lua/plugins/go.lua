return {
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    keys = {
      { "<leader>ga", "<cmd>GoTagAdd json<CR>", ft = "go", desc = "Add json tags" },
      { "<leader>gA", "<cmd>GoTagAdd<CR>",       ft = "go", desc = "Add tags (prompt)" },
      { "<leader>gx", "<cmd>GoTagRm<CR>",         ft = "go", desc = "Remove tags" },
    },
    config = function()
      require("gopher").setup({
        commands = {
          go_fill_struct = "gofillstruct",
          go_impl_methods = "impl",
        },
      })
      vim.schedule(function()
        vim.cmd("silent! GoInstallDeps")
      end)
    end,
  },
}
