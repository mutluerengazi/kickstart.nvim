return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
            ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
            ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
            ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
            ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
            ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
            ' [ TIP: To exit Vim, just power off your computer. ]',
          },
          center = {
            {
              icon = ' ',
              icon_hl = 'Title',
              desc = 'Find File',
              desc_hl = 'String',
              key = 'f',
              keymap = 'SPC f f',
              key_hl = 'Number',
              action = 'Telescope find_files',
            },
            {
              icon = ' ',
              desc = 'Find Word',
              key = 'w',
              keymap = 'SPC f w',
              action = 'Telescope live_grep',
            },
            {
              icon = ' ',
              desc = 'Recent Files',
              key = 'r',
              keymap = 'SPC f r',
              action = 'Telescope oldfiles',
            },
            {
              icon = ' ',
              desc = 'Config',
              key = 'c',
              keymap = 'SPC f c',
              action = 'lua require("lazyvim.util").telescope.config_files()()',
            },
            {
              icon = ' ',
              desc = 'Quit',
              key = 'q',
              keymap = 'SPC q',
              action = 'quit',
            },
          },
          footer = function()
            local stats = require('lazy').stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { '⚡ Neovim loaded ' .. stats.count .. ' plugins in ' .. ms .. 'ms' }
          end,
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
