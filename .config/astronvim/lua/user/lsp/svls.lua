require'lspconfig'.svls.setup{}
return {
  cmd ={"svls"},
  filetypes = { "verilog","systemverilog" },
  single_filesupport = true,
  root_dir = function()
      return vim.fn.getcwd()
      end,
}
