-- This is an example chadrc file , its supposed to be placed in /lua/custom dir
-- lua/custom/chadrc.lua

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "nord",
}

-- replace some default plugin default
M.mappings.plugins = {
    nvimtree = {
      focus = "<leader>t",
      toggle = "<leader>e",
    },
}

-- set lspconfig
M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
}

-- set options
M.options = {
  relativenumber = true,
}

return M
