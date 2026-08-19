return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "omnisharp",
          "phpactor",
          "html",
          "cssls",
          "ts_ls",
          "pyright",
          "eslint",
          "terraformls",
          "gopls",
          "clangd",
          "rust_analyzer",
          "bashls",
          "dockerls",
          "yamlls",
          "jsonls",
          "sqls",
        },
        handlers = {
          function(server_name)
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            local ok_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
            if ok_cmp then
              capabilities = cmp_lsp.default_capabilities(capabilities)
            end

            vim.lsp.enable(server_name)
            require("lspconfig")[server_name].setup({ capabilities = capabilities })
          end,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- LSP keymaps
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf

          vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Go to definition" }))
          vim.keymap.set("n", "<leader>pd", function()
            require("telescope.builtin").lsp_definitions()
          end, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Peek definition" }))
          vim.keymap.set("n", "gr", vim.lsp.buf.references, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Go to references" }))
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Go to implementation" }))
          vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Hover docs" }))
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Rename symbol" }))
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Code action" }))
          vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Line diagnostics" }))
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Previous diagnostic" }))
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, vim.tbl_extend("keep", { buffer = bufnr }, { desc = "Next diagnostic" }))
        end,
      })

      -- Diagnostic display
      vim.diagnostic.config({
        float = { border = "rounded" },
        signs = true,
        underline = true,
        update_in_insert = false,
      })
    end,
  },
}

