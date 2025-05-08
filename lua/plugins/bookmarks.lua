return {
  {
    "LintaoAmons/bookmarks.nvim",
    -- pin the plugin at specific version for stability
    -- backup your bookmark sqlite db when there are breaking changes
    tag = "v2.9.1",
    dependencies = {
      { "kkharji/sqlite.lua" },
      { "nvim-telescope/telescope.nvim" },
      { "stevearc/dressing.nvim" }, -- optional: better UI
    },
    config = function()
      local opts = {} -- check the "./lua/bookmarks/default-config.lua" file for all the options
      require("bookmarks").setup(opts) -- you must call setup to init sqlite db
      vim.keymap.set(
        { "n", "v" },
        "mm",
        "<cmd>BookmarksMark<cr>",
        { desc = "Mark current line into active BookmarkList." }
      )
      vim.keymap.set(
        { "n", "v" },
        "mo",
        "<cmd>BookmarksGoto<cr>",
        { desc = "Go to bookmark at current active BookmarkList" }
      )
      vim.keymap.set(
        { "n", "v" },
        "ma",
        "<cmd>BookmarksCommands<cr>",
        { desc = "Find and trigger a bookmark command." }
      )
      vim.keymap.set({ "n", "v" }, "mt", "<cmd>BookmarksTree<cr>", { desc = "Browse bookmarks in tree view" })
      vim.keymap.set({ "n", "v" }, "ml", "<cmd>BookmarksLists<cr>", { desc = "Pick a bookmark list with telescope" })
      vim.keymap.set(
        { "n", "v" },
        "mn",
        "<cmd>BookmarksNewList<cr>",
        { desc = "Create a new bookmark list, but I normally use BookmarksTree to create new list" }
      )
    end,
  },
}

-- run :BookmarksInfo to see the running status of the plugin
