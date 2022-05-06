return {
  -- enable servers that you already have installed without lsp-installer
  -- NOTE: Configurations
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  servers = {
    -- "pyright",
    -- "clangd",
    -- "sumneko_lua",
    -- "svlangserver",
    "svls",
  },
  -- add to the server on_attach function
  -- on_attach = function(client, bufnr)
  -- end,

  -- override the lsp installer server-registration function
  -- server_registration = function(server, opts)
  --   require("lspconfig")[server.name].setup(opts)
  -- end

  -- Add overrides for LSP server settings, the keys are the name of the server
  ["server-settings"] = {
    -- svlangserver = require "user.lsp.svlangserver",
    svls = require "user.lsp.svls",
  },
}
