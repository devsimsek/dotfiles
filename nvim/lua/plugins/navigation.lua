return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local builtin = require("telescope.builtin")
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          mappings = {
            i = {
              ["<C-h>"] = "which_key",
              ["<C-d>"] = function(prompt_bufnr)
                vim.schedule(function()
                  local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
                  picker:toggle_flag("hidden")
                end)
              end,
            },
          },
          file_ignore_patterns = {
            "node_modules", ".git", "__pycache__", "dist", "build",
            "%.class", "%.o", "%.pyc", "vendor", "target",
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            mappings = {
              i = {
                ["<CR>"] = function(prompt_bufnr)
                  local actions = require("telescope.actions")
                  local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
                  local path = picker:_get_prompt()
                  if path == "" then
                    actions.select_default(prompt_bufnr)
                    return
                  end
                  local cwd = picker.cwd or vim.fn.getcwd()
                  local target = path:match("^/") and path or cwd .. "/" .. path
                  local exists = vim.uv.fs_stat(target) ~= nil
                  local has_slash = path:find("/", 1, true) ~= nil
                  local has_results = picker.manager and picker.manager:num_results() > 0
                  if exists or (not has_slash and has_results) then
                    actions.select_default(prompt_bufnr)
                  else
                    actions.close(prompt_bufnr)
                    vim.fn.mkdir(vim.fn.fnamemodify(target, ":h"), "p")
                    vim.cmd("edit " .. vim.fn.fnameescape(target))
                  end
                end,
                ["<C-n>"] = function(prompt_bufnr)
                  local actions = require("telescope.actions")
                  local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
                  local path = picker:_get_prompt()
                  if path == "" then
                    return
                  end
                  actions.close(prompt_bufnr)
                  local cwd = picker.cwd or vim.fn.getcwd()
                  local target = path:match("^/") and path or cwd .. "/" .. path
                  vim.fn.mkdir(vim.fn.fnamemodify(target, ":h"), "p")
                  vim.cmd("edit " .. vim.fn.fnameescape(target))
                end,
              },
            },
          },
          live_grep = { additional_args = { "--hidden", "--glob=!node_modules/**" } },
        },
      })

      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>ff", builtin.find_files,              vim.tbl_extend("keep", opts, { desc = "Find files" }))
      vim.keymap.set("n", "<leader>fg", builtin.live_grep,               vim.tbl_extend("keep", opts, { desc = "Live grep" }))
      vim.keymap.set("n", "<leader>fb", builtin.buffers,                 vim.tbl_extend("keep", opts, { desc = "Buffers" }))
      vim.keymap.set("n", "<leader>fh", builtin.help_tags,               vim.tbl_extend("keep", opts, { desc = "Help tags" }))
      vim.keymap.set("n", "<leader>fk", builtin.keymaps,                 vim.tbl_extend("keep", opts, { desc = "Keymaps" }))
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics,             vim.tbl_extend("keep", opts, { desc = "Diagnostics" }))
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles,                vim.tbl_extend("keep", opts, { desc = "Recent files" }))
      vim.keymap.set("n", "<leader>fc", builtin.commands,                vim.tbl_extend("keep", opts, { desc = "Commands" }))
      vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols,    vim.tbl_extend("keep", opts, { desc = "Document symbols" }))
      vim.keymap.set("n", "<leader>fS", builtin.lsp_workspace_symbols,   vim.tbl_extend("keep", opts, { desc = "Workspace symbols" }))
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}

