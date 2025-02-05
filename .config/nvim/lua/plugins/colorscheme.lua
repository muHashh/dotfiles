return {
  { "nyoom-engineering/oxocarbon.nvim" },
  { "sainnhe/gruvbox-material" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    -- priority = 1000,
    opts = {
      flavour = "macchiato",
      transparent_background = true,
    },
  },

  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = { transparent_mode = true } },
  -- { "EdenEast/nightfox.nvim", name = "knightfox", opts = { options = { transparent = true } } },
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
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "cyberdream",
      -- colorscheme = "catppuccin",
      colorscheme = "catppuccin-macchiato",
      -- colorscheme = "gruvbox",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "github_light_default",
      -- colorscheme = "oxocarbon",
      -- colorscheme = "github_dark_default",
      -- background = "dark",
    },
  },
}
