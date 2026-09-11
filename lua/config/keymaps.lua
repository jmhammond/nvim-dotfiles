-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- https://panache.bz

local map = vim.keymap.set

map({ "n", "v" }, "<leader>;", ":", { desc = "Enter Command-Line Mode" })

-- Cmd+C (Copy in Visual mode)
map("v", "<D-c>", '"+y', { desc = "Copy selection to clipboard" })

-- Cmd+X (Cut in Visual mode)
map("v", "<D-x>", '"+d', { desc = "Cut selection to clipboard" })

-- Cmd+V (Paste in all modes)
map({ "n", "v" }, "<D-v>", '"+p', { desc = "Paste normal/visual" })
map("i", "<D-v>", "<C-r><C-p>+", { desc = "Paste in insert mode" })
map("c", "<D-v>", "<C-r>+", { desc = "Paste in cmdline" })

-- Cmd+Z (Undo in all modes)
map("n", "<D-z>", "u", { desc = "Undo" })
map("v", "<D-z>", "<Esc>u", { desc = "Undo visual" })
map("i", "<D-z>", "<cmd>undo<cr>", { desc = "Undo insert" })

-- Cmd+Shift+Z (Redo in all modes)
map("n", "<D-Z>", "<C-r>", { desc = "Redo" })
map("i", "<D-Z>", "<cmd>redo<cr>", { desc = "Redo insert" })
