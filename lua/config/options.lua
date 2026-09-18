-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.root_spec = { "lsp", { ".git", "lua", ".project", "_quarto.yml", ".Rproj" }, "cwd" }

-- For the gui, let's not have crazy animations
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  --
  -- Disable cursor particle/vfx trails
  vim.g.neovide_cursor_vfx_mode = ""

  -- Disable smooth window/scroll animations
  -- vim.g.neovide_scroll_animation_length = 0
  -- vim.g.neovide_position_animation_length = 0

  -- vim.o.guifont = "*:h18"
end
