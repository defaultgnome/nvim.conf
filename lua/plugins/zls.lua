return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      zls = {
        mason = false,
        cmd = { vim.fn.expand("$HOME/github/zls/zig-out/bin/zls") },
        filetypes = { "zig", "zir" },
      },
    },
  },
}
