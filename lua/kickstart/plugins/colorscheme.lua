return {
  "folke/tokyonight.nvim",
  priority = 1000, -- Ensure it loads first
  lazy = false,
  config = function()
    vim.cmd.colorscheme('tokyonight-night')
  end
}
