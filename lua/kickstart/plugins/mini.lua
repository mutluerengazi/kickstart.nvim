return {
  'echasnovski/mini.nvim',
  config = function()
    -- AI setup
    require('mini.ai').setup { n_lines = 500 }

    -- Surround setup
    require('mini.surround').setup()

    -- Statusline setup
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
