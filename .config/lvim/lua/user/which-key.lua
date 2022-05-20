lvim.builtin.which_key.mappings["R"] = {
  name = "Replace",
  f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Replace File" },
  p = { "<cmd>lua require('spectre').open()<CR>", "Replace Project" },
  s = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search" },
}


-- lvim.builtin.which_key.mappings["f"] = {
--   name = "telescope search",
--   n = { "<cmd>lua require('telescope').extensions.notify.notify(require('telescope.themes').get_dropdown({}))<cr>", "nvim_notify" },
--   f = { "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>", "find files" },
--   g = { "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>", "live_grep" },
--   o = { "<cmd>lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown({}))<cr>", "old files" },
--   F = { "<cmd>lua require('telescope').extensions.live_grep_raw.live_grep_raw(require('telescope.themes').get_ivy())<cr>", "Find Text" },
--   h = { "<cmd>lua require('telescope.builtin').resume(require('telescope.themes').get_dropdown({}))<cr>", "resume" },
--   t = { "<cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({}))<cr>", "help tags" },
--   m = { "<cmd>lua require('telescope.builtin').marks(require('telescope.themes').get_dropdown({}))<cr>", "marks" },
--   i = { "<cmd>lua require('telescope.builtin').highlights(require('telescope.themes').get_dropdown({}))<cr>", "highlights" },
--   b = { "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>", "find buffers" },
--   p = { "<cmd>lua require('telescope.builtin').pickers(require('telescope.themes').get_dropdown({}))<cr>", "pickers" },
-- }

lvim.builtin.which_key.mappings["sB"] = {
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>", "find buffers"
}

lvim.builtin.which_key.mappings["so"] = {
  "<cmd>lua require('telescope.builtin').oldfiles()<cr>", "find old files"
}
