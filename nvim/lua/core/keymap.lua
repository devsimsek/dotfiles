local map = vim.keymap.set
local desc = function(str) return { noremap = true, silent = true, desc = str } end

-- Leader key (space)
vim.g.mapleader = " "

-- Basic navigation
map("n", "<leader>nh", ":nohlsearch<CR>", desc("Clear highlights"))
map("n", "<leader>q", ":q<CR>", desc("Quit window"))
map("n", "<leader>Q", ":qa!<CR>", desc("Force quit all"))

-- Save
map({ "n", "i" }, "<C-s>", "<cmd>write<CR>", desc("Save file"))

-- Undo/Redo
map({ "n", "i" }, "<C-z>", "<cmd>undo<CR>", desc("Undo"))
map({ "n", "i" }, "<C-r>", "<cmd>redo<CR>", desc("Redo"))

-- Window navigation
map("n", "<C-h>", "<C-w>h", desc("Go to left window"))
map("n", "<C-j>", "<C-w>j", desc("Go to bottom window"))
map("n", "<C-k>", "<C-w>k", desc("Go to top window"))
map("n", "<C-l>", "<C-w>l", desc("Go to right window"))

-- Window management
map("n", "<leader>w-", "<C-w>s", desc("Split horizontal"))
map("n", "<leader>w|", "<C-w>v", desc("Split vertical"))
map("n", "<leader>we", "<C-w>=", desc("Equalize windows"))
map("n", "<leader>w,", "<C-w>5<", desc("Shrink width"))
map("n", "<leader>w.", "<C-w>5>", desc("Grow width"))

-- Buffer navigation
map("n", "[b", ":bprevious<CR>", desc("Previous buffer"))
map("n", "]b", ":bnext<CR>", desc("Next buffer"))
map("n", "<leader>bd", ":bdelete<CR>", desc("Delete buffer"))

-- Tab navigation
map("n", "<leader>tn", ":tabnew<CR>", desc("New tab"))
map("n", "<leader>tl", ":tabnext<CR>", desc("Next tab"))
map("n", "<leader>th", ":tabprevious<CR>", desc("Previous tab"))
map("n", "<leader>tc", ":tabclose<CR>", desc("Close tab"))

-- Search & replace
map("n", "<leader>sr", ":%s/", desc("Replace (file)"))
map("v", "<leader>sr", ":s/", desc("Replace (selection)"))

-- Better indenting in visual mode
map("v", "<", "<gv", desc("Dedent"))
map("v", ">", ">gv", desc("Indent"))

-- Move lines up/down (Alt/Option on macOS)
map("n", "<A-j>", "<cmd>move .+1<CR>", desc("Move line down"))
map("n", "<A-k>", "<cmd>move .-2<CR>", desc("Move line up"))
map("v", "<A-j>", "<cmd>move '>+1<CR>gv", desc("Move selection down"))
map("v", "<A-k>", "<cmd>move '<-2<CR>gv", desc("Move selection up"))
