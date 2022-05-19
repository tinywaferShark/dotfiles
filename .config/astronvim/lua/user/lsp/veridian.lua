

require'lspconfig'.veridian.setup{}
return {
  cmd ={"veridian"},
  filetypes = { "verilog","systemverilog" },
  single_filesupport = true,
  root_dir = function()
      return vim.fn.getcwd()
      end,
}