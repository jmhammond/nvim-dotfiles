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
}
