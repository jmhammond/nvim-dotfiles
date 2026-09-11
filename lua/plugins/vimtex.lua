return {
  {
    "lervag/vimtex",
    lazy = false, -- VimTeX recommends not lazy-loading
    init = function()
      vim.g.vimtex_view_method = "skim"
      -- Automatically open Skim on successful compilation
      vim.g.vimtex_view_skim_sync = 1
      -- Make Skim stay in the background when updating
      vim.g.vimtex_view_skim_activate = 0
      vim.g.vimtex_syntax_conceal = {
        accents = 1,
        ligatures = 1,
        cites = 1,
        fancy = 0, -- Keeps \sqrt visible
        spacing = 0, -- Keeps \vfill, \hfill visible
        greek = 1,
        math_bounds = 0,
        math_delimiters = 1,
        math_fracs = 0,
        math_super_sub = 0,
        math_symbols = 1,
        sections = 0,
        styles = 1,
      }
    end,
  },
}
