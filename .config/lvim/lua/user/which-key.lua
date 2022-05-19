lvim.builtin.which_key.mappings["R"] = {
  name = "Replace",
  f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Replace File" },
  p = { "<cmd>lua require('spectre').open()<CR>", "Replace Project" },
  s = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search" },
}
