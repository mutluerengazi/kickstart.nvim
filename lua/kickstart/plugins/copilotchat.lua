return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken",       -- Only on MacOS or Linux
    init = function()
      vim.g.copilot_enabled = false
      local home = os.getenv("HOME")
      package.path = package.path ..
          ";" .. home .. "/.luarocks/share/lua/5.1/?.lua;" .. home .. "/.luarocks/share/lua/5.1/?/init.lua"
      package.cpath = package.cpath .. ";" .. home .. "/.luarocks/lib/lua/5.1/?.so"
    end,
    opts = {
      debug = true, -- Enable debugging
      model = "claude-3.5-sonnet"
      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
