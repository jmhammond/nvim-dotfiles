-- lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        projects = {
          format = "file",
          confirm = "load_session",
          recent = true,
          -- this just adds top level directories to search for projects
          dev = { vim.fn.expand("~/OneDrive - Wichita State University") },

          patterns = { ".git", "package.json", "Makefile", ".project" },
        },
      },
    },
  },
  keys = {
    -- Disable the default <leader>, keymap
    { "<leader>,", false },

    -- Map <leader>bb to open the buffer picker; this matches my doom or spacemacs experience.
    {
      "<leader>bb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
  },
}
