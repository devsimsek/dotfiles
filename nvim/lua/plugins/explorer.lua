return {
  {
    "nvim-tree/nvim-tree.lua",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30,
          side = "left",
        },
        renderer = {
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
            },
          },
        },
        actions = {
          open_file = {
            quit_on_open = false,
          },
        },
        filters = {
          dotfiles = false,
        },
      })

      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", vim.tbl_extend("keep", opts, { desc = "Toggle file explorer" }))
      vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFindFile<CR>", vim.tbl_extend("keep", opts, { desc = "Reveal in explorer" }))
    end,
  },
}
