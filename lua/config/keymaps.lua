-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- https://panache.bz
vim.keymap.set({ "n", "v" }, "<leader>;", ":", { desc = "Enter Command-Line Mode" })
