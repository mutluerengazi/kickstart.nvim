return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- Ensure it loads first
  lazy = false,
  config = function()
    vim.cmd.colorscheme('gruvbox')
    vim.o.background = 'light'
  end
}
