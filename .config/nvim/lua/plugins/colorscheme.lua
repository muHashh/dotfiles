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
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "github_light_default",
      -- colorscheme = "oxocarbon",
      -- colorscheme = "github_dark_default",
      -- background = "dark",
    },
  },
}
