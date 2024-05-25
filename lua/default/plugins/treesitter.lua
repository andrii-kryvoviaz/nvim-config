return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    -- configure treesitter
    treesitter.setup({
      -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = { enable = true },
      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "xml",
        "yaml",
        "proto",
        "javascript",
        "typescript",
        "lua",
        "php",
        "go",
        "vim",
        "prisma",
        "graphql",
        "sql",
        "html",
        "css",
        "tsx",
        "svelte",
        "angular",
        "markdown",
        "markdown_inline",
        "bash",
        "make",
        "dockerfile",
        "gitignore"
      },
      -- auto install above language parsers
      auto_install = true,
      	incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          scope_incremental = "<Tab>",
          node_decremental = "<S-Tab>",
        },
      },
    })
  end
}