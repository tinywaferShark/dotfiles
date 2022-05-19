lvim.lsp.automatic_servers_installation = false


vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "veridian" })
local opts = {
  cmd = { "veridian" },
  filetypes = { "verilog", "systemverilog" },
  single_filesupport = true,
  on_attach = require("lvim.lsp").common_on_attach,
  root_dir = function()
    return vim.fn.getcwd()
  end,
}
require("lvim.lsp.manager").setup("veridian", opts)
