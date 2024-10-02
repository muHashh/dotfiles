return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        -- keymaps = {
        --   accept_suggestion = "<Tab>",
        -- },
        openai_api_key = vim.env.OPENAI_API_KEY,
        disable_inline_completion = false,
        disable_keymaps = false,
      })
    end,
  },
}
