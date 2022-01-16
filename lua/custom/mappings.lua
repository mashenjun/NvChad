local map = require("core.utils").map

local M = {}

M.bookmarks = function()
  map("n", "<F3>", ":BookmarkToggle<CR>")
  map("n", "<leader><F3>", ":BookmarkShowAll<CR>")
  -- map("n", "<leader>mm", ":BookmarkToggle <CR>")
  -- map("n", "<leader>mn", ":BookmarkNext <CR>")
  -- map("n", "<leader>mp", ":BookmarkPrev <CR>")
  -- map("n", "<leader>ma", ":BookmarkShowAll <CR>")
  -- map("n", "<leader>mc", ":BookmarkClear <CR>")
  -- map("n", "<leader>mx", ":BookmarkClearAll <CR>")
end

return M
