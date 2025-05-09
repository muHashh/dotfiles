return {
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "auto",
        styles = {
          transparency = true,
        },
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "warmer",
        transparent = true,
      })
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        disable_background = true,
        bold_vert_split = false,
      })
    end,
  },
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
      -- colorscheme = "gruvbox-material",
      colorscheme = "rose-pine",
      -- colorscheme = "rose-pine-moon",
      -- colorscheme = "poimandres",
      -- colorscheme = "cyberdream",
      -- colorscheme = "catppuccin",
      -- colorscheme = "catppuccin-macchiato",
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "gruvbox",
      -- colorscheme = "github_light_default",
      -- colorscheme = "oxocarbon",
      -- colorscheme = "github_dark_default",
      -- background = "dark",
    },
  },
}
