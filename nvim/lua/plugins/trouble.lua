return {
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    config = function()
      require("trouble").setup({
        icons = true,
        modes = {
          lsp_document_diagnostics = {
            mode = "diagnostics",
            filter = { buf = 0 },
          },
        },
      })

      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", opts)
      vim.keymap.set("n", "<leader>xw", "<cmd>Trouble lsp_document_diagnostics toggle<CR>", opts)
    end,
  },
}
