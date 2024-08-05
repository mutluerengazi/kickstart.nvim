return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- Can be: latte, frappe, macchiato, mocha
        background = { light = 'latte', dark = 'mocha' },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = 'dark',
          percentage = 0.15,
        },
        no_italic = true,
        no_bold = false,
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = false,
          neotree = true,
          telescope = true,
          notify = false,
          mini = false,
        },
      }

      -- Set the colorscheme
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
