return {
  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the colorscheme
      vim.cmd [[colorscheme nord]]

      -- Optional: Additional configuration
      require('nord').set()
    end,
  },
}
