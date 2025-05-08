return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      zls = {
        mason = false,
        cmd = { vim.fn.expand("$HOME/.zvm/bin/zls") },
        filetypes = { "zig", "zir" },
      },
    },
  },
}
