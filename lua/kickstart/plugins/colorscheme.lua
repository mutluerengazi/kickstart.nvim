return {
  {
    'shaunsingh/nord.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the colorscheme
      require('nord').set()

      -- Additional configuration (optional)
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = false
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false

      -- Set the colorscheme
      vim.cmd.colorscheme 'nord'
    end,
  },
}
