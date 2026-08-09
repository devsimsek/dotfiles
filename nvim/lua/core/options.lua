local opt = vim.opt

opt.termguicolors = true

-- Shell PATH includes Go & other tool bins
vim.env.PATH = vim.fn.expand("~/go/bin") .. ":" .. vim.env.PATH

opt.number = true
opt.relativenumber = true

opt.cursorline = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2

opt.smartindent = true
opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"

opt.updatetime = 250
opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append("c")

opt.hlsearch = false

-- Ergonomic improvements
opt.scrolloff = 8                    -- Keep 8 lines of context when scrolling
opt.sidescrolloff = 8                -- Keep 8 columns of context horizontally
opt.splitright = true                -- New vertical splits to the right
opt.splitbelow = true                -- New horizontal splits below
opt.cmdheight = 1                    -- Compact command bar
opt.pumheight = 10                   -- Completion menu height
opt.undofile = true                  -- Persistent undo
opt.clipboard = "unnamedplus"        -- Use system clipboard
opt.timeoutlen = 300                 -- Faster key sequences
opt.mouse = "a"                      -- Enable mouse support
opt.inccommand = "split"             -- Show live preview of :s///

