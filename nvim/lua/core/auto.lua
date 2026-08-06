local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local group = augroup("CoreAutocmds", { clear = true })

-- Highlight on yank
autocmd("TextYankPost", {
  group = group,
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
})

-- Trim trailing whitespace on save
autocmd("BufWritePre", {
  group = group,
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})

