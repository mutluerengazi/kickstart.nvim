return {
  {
    'tpope/vim-fugitive',
    keys = {
      { '<leader>gs', ':Git<CR>',        desc = 'Git status' },
      { '<leader>gc', ':Git commit<CR>', desc = 'Git commit' },
      { '<leader>gp', ':Git push<CR>',   desc = 'Git push' },
      { '<leader>gl', ':Git pull<CR>',   desc = 'Git pull' },
      { '<leader>gb', ':Git blame<CR>',  desc = 'Git blame' },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Hunk-specific operations
        map('n', ']c', function()
          if vim.wo.diff then
            return ']c'
          end
          vim.schedule(function()
            gs.next_hunk()
          end)
          return '<Ignore>'
        end, { expr = true, desc = 'Next hunk' })
        map('n', '[c', function()
          if vim.wo.diff then
            return '[c'
          end
          vim.schedule(function()
            gs.prev_hunk()
          end)
          return '<Ignore>'
        end, { expr = true, desc = 'Previous hunk' })
        map('n', '<leader>hs', gs.stage_hunk, { desc = 'Stage hunk' })
        map('n', '<leader>hr', gs.reset_hunk, { desc = 'Reset hunk' })
        map('v', '<leader>hs', function()
          gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Stage hunk' })
        map('v', '<leader>hr', function()
          gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Reset hunk' })
        map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'Undo stage hunk' })
        map('n', '<leader>hp', gs.preview_hunk, { desc = 'Preview hunk' })
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'Select hunk' })

        -- Other Git operations
        map('n', '<leader>gS', gs.stage_buffer, { desc = 'Stage buffer' })
        map('n', '<leader>gR', gs.reset_buffer, { desc = 'Reset buffer' })
        map('n', '<leader>gB', function()
          gs.blame_line { full = true }
        end, { desc = 'Blame line' })
        map('n', '<leader>gt', gs.toggle_current_line_blame, { desc = 'Toggle line blame' })
        map('n', '<leader>gd', gs.diffthis, { desc = 'Diff this' })
        map('n', '<leader>gD', function()
          gs.diffthis '~'
        end, { desc = 'Diff this ~' })
        map('n', '<leader>gx', gs.toggle_deleted, { desc = 'Toggle deleted' })
      end,
    },
  },
}
