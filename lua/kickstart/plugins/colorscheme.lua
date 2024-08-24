return {
  {
    'Shatur/neovim-ayu',
    lazy = false,
    priority = 1000,
    config = function()
      require('ayu').setup({
        mirage = false, -- Set to true if you want to use the mirage variant
        overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters to override
      })
      vim.cmd.colorscheme 'ayu-dark'
    end,
  },
}
