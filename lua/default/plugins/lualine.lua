return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- load lualine
    local lualine = require("lualine")

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = 'vscode',
        component_separators = { left = '›', right = '‹' },
      },
      sections = { 
        lualine_c = { "filename" },
        -- show current time 12-hour format with AM/PM
        lualine_x = { "os.date('%a %I:%M %p')", "encoding", "fileformat", "filetype" },
      }
    })
  end,
}