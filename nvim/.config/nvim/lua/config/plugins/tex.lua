return {
  "lervag/vimtex",
  lazy = false, -- load on startup
  config = function()
    vim.g.vimtex_view_method = "zathura" -- or "skim", "sioyek", etc.
    vim.g.vimtex_compiler_method = "latexmk"
  end,
}

