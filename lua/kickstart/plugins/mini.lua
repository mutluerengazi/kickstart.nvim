return {
  'echasnovski/mini.nvim',
  config = function()
    -- AI setup
    require('mini.ai').setup { n_lines = 500 }
    -- Surround setup
    require('mini.surround').setup()
  end,
}
