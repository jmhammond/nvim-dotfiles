return {
  "jpalardy/vim-slime",
  init = function()
    -- 1. Tell slime to send text to Neovim's built-in :terminal
    vim.g.slime_target = "neovim"

    -- 2. Prevent slime from overriding your custom mappings
    vim.g.slime_no_mappings = 1

    -- 3. Bracketed paste prevents indentation/formatting bugs in REPLs (like R/Python)
    vim.g.slime_bracketed_paste = 1
  end,
  config = function()
    -- Map <C-CR> to send current line / paragraph in Normal mode
    vim.keymap.set("n", "<C-CR>", "<Plug>SlimeParagraphSend", { desc = "Send to REPL" })

    -- Map <C-CR> to send the visual selection in Visual mode
    vim.keymap.set("x", "<C-CR>", "<Plug>SlimeRegionSend", { desc = "Send to REPL" })

    -- Optional: a key to reconfigure or pick a different terminal job ID if needed
    vim.keymap.set("n", "<leader>sc", "<Cmd>SlimeConfig<CR>", { desc = "Slime Config" })
  end,
}
