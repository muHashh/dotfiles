return {
  { "nyoom-engineering/oxocarbon.nvim" },
  { "sainnhe/gruvbox-material" },
  -- { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
      -- colorscheme = "oxocarbon",
      -- colorscheme = "github_dark_default",
      -- background = "dark",
    },
  },
}
