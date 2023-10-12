-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- escape remap
keymap.set("i", "<C-e>", "<Esc>", { desc = "Escape current mode" }) -- escape current mode

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- buffer management 
keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", { desc="Cycle to next buffer"})
keymap.set("n", "<leader><tab>", "<cmd>BufferLineCyclePrev<CR>", { desc="Cycle to previous buffer"})
keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc="Close current buffer"})
keymap.set("n", "<leader>bn", "<cmd>enew<CR>", { desc="Open new buffer"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

