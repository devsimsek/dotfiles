return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "▎" },
          change = { text = "▎" },
          delete = { text = "▶" },
          topdelete = { text = "▶" },
          changedelete = { text = "▎" },
        },
        on_attach = function(bufnr)
          local gitsigns = require("gitsigns")

          vim.keymap.set("n", "<leader>gg", gitsigns.toggle_signs, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Toggle signs" }))
          vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Blame line" }))
          vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Diff hunk" }))
          vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Stage hunk" }))
          vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Reset hunk" }))
          vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Preview hunk" }))
          vim.keymap.set("n", "]c", function()
            if vim.wo.diff then return "]c" end
            vim.schedule(function() gitsigns.next_hunk() end)
            return "<Ignore>"
          end, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Next hunk" }))
          vim.keymap.set("n", "[c", function()
            if vim.wo.diff then return "[c" end
            vim.schedule(function() gitsigns.prev_hunk() end)
            return "<Ignore>"
          end, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Previous hunk" }))
        end,
      })
    end,
  },
}
