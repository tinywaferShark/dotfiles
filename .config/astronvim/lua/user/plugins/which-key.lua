return {
  -- Add bindings to the normal mode <leader> mappings
  register_n_leader = {
    h = {
      name = "hop",
      -- b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
      w = { "<cmd>HopWord<CR>", "hop a word" },
      c = { "<cmd>HopChar1<CR>", "hop char 1" },
      l = { "<cmd>HopLine<CR>", "hop line" },
    },

    R = {
      name = "Replace",
      f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Replace File" },
      p = { "<cmd>lua require('spectre').open()<CR>", "Replace Project" },
      s = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search" },
    },
}
}