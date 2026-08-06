return {
  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm", "TermExec" },
    keys = {
      { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "Terminal (floating)" },
      { "<leader>td", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Terminal (dock)" },
      { "<leader>tF", "<cmd>ToggleTerm direction=tab<CR>",   desc = "Terminal (tab)" },
    },
    config = function()
      require("toggleterm").setup({
        open_mapping = false,
        direction = "horizontal",
        float_opts = {
          border = "curved",
          width = function() return math.floor(vim.o.columns * 0.80) end,
          height = function() return math.floor(vim.o.lines * 0.80) end,
        },
        size = function(term)
          if term.direction == "horizontal" then
            return math.floor(vim.o.lines * 0.30)
          elseif term.direction == "vertical" then
            return math.floor(vim.o.columns * 0.40)
          end
        end,
        persist_size = false,
        persist_mode = true,
      })
    end,
  },
}
