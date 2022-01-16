local customPlugins = require("core.customPlugins")

customPlugins.add(function(use)

  use{
    "tpope/vim-surround",
  }

  use{
    "kana/vim-textobj-user",
  }

  use{
    "kana/vim-textobj-entire",
  }

  use {
    "williamboman/nvim-lsp-installer",
  }

  use {
    "artanikin/vim-synthwave84",
    config = "vim.cmd [[ au VimEnter * colorscheme synthwave84 ]]"
  }

  use {
    "tpope/vim-abolish",
  }
  
  use {
    "MattesGroeger/vim-bookmarks",
    config = function()
      vim.api.nvim_set_var("bookmark_no_default_key_mappings", 1)
      vim.api.nvim_set_var("bookmark_save_per_working_dir", 1)
      vim.api.nvim_set_var("bookmark_auto_save", 1)
      vim.api.nvim_set_var("bookmark_auto_close", 1)
      require("custom.mappings").bookmarks()
    end,
 }
  
  use {
    "ldelossa/litee.nvim",
    disable = true,
    config = function()
      require('litee.lib').setup({
        icon_set = "nerd",
      })
    end,
  }

  use {
    "ldelossa/litee-bookmarks.nvim",
    disable = true,
    config = function()
      require('litee.bookmarks').setup({
        icon_set = "default",
      })
    end,
  }

end)

vim.g.bookmark_no_default_key_mappings = 1

-- load custom key mappings
require "custom.options"
require "custom.autocmds"
