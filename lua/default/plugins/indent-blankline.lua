return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  config = function()
    local highlightIndent = {
      "LightGrey",
    }

    local highlightScope = {
      "LightGreyActive",
    }

    local hooks = require "ibl.hooks"
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "LightGrey", { fg = "#404040" })
        vim.api.nvim_set_hl(0, "LightGreyActive", { fg = "#707070" })
    end)

    local ibl = require("ibl")

    ibl.setup({
      indent = {
        highlight = highlightIndent,
        char = "│",
      },
      scope = {
        highlight = highlightScope,
      },
    })
  end,
}
