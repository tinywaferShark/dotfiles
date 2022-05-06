return {
  cmd ={"svlangserver"},
  filetypes = { "verilog","systemverilog" },
  single_filesupport = true,
  root_dir = function()
      return vim.fn.getcwd()
      end,
  settings = {
      systemverilog={
        launchConfiguration="verilator -sv -Wall --lint-only",
        formatCommand="verible-verilog-format",
      }
    },
}