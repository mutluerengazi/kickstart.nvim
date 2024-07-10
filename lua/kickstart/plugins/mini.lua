return {
  'echasnovski/mini.nvim',
  config = function()
    -- AI setup
    require('mini.ai').setup { n_lines = 500 }
    -- Surround setup
    require('mini.surround').setup()
    -- Git setup
    require('mini.git').setup()
    -- Starter setup
    require('mini.starter').setup {
      evaluate_single = true,
      header = table.concat({
        [[                                                ]],
        [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ]],
        [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ]],
        [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ]],
        [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ]],
        [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ]],
        [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ]],
        [[                                                ]],
      }, '\n'),
      footer = table.concat({
        '',
        '[ TIP: To exit Vim, just power off your computer. ]',
      }, '\n'),
      items = {
        { name = 'Find File', action = 'Telescope find_files', section = 'Telescope' },
        { name = 'Find Word', action = 'Telescope live_grep', section = 'Telescope' },
        { name = 'Recent Files', action = 'Telescope oldfiles', section = 'Telescope' },
        { name = 'Config', action = 'lua require("lazyvim.util").telescope.config_files()()', section = 'Config' },
        { name = 'Quit', action = 'quit', section = 'Actions' },
      },
    }
  end,
}
