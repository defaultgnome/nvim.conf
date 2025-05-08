return {
  {
    -- "ArielBenichou/grosse-patate.nvim",
    dir = "~/personal/grosse-patate.nvim",
    dev = true,
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
    },
    build = "cd engine && npm install && npm run build",
    config = function()
      require("grosse-patate").setup()
    end,
  },
}
