return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    {
      '<leader>n',
      function()
        require('neo-tree.command').execute { toggle = true, dir = vim.loop.cwd() }
      end,
      { desc = 'Toggle NeoTree' },
    },
  },
  opts = {
    filesystem = {
      window = {
        position = 'right',
        width = 40,
        mappings = {
          ['\\'] = 'close_window',
          ['C'] = 'close_all_nodes',
          ['h'] = 'close_node',
          ['l'] = 'open',
        },
      },
    },
  },
}
