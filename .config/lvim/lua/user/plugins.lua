--NOTE:Plugins
require("user.which-key")
require("user.nvim-cmp")

lvim.plugins = {
  --theme
  -- {
  --   "abzcoding/tokyonight.nvim",
  --   branch = "feat/local",
  --   config = function()
  --     require("user.theme").tokyonight()
  --     vim.cmd [[colorscheme tokyonight]]
  --   end,
  --   cond = function()
  --     local _time = os.date "*t"
  --     return _time.hour >= 9 and _time.hour < 17
  --   end,
  -- },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("user.catppuccin").config()
      vim.cmd [[colorscheme catppuccin]]
    end,
    -- cond = function()
    --   local _time = os.date "*t"
    --   return (_time.hour >= 17 and _time.hour < 21)
    -- end,
  },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   config = function()
  --     require("user.theme").kanagawa()
  --     vim.cmd [[colorscheme kanagawa]]
  --   end,
  --   cond = function()
  --     local _time = os.date "*t"
  --     return (_time.hour >= 21 and _time.hour < 24) or (_time.hour >= 0 and _time.hour < 1)
  --   end,
  -- },
  --Note: editor
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("user.indent-blankline").config()
    end,
    event = { "BufRead", "BufNewFile" },
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("user.hop").config()
      -- vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      -- vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  -- {
  --   "nvim-telescope/telescope-fzy-native.nvim",
  --   run = "make",
  --   event = "BufRead",
  -- },
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    opt = true,
    event = "InsertEnter",
  },
  {
    "hrsh7th/cmp-cmdline",
    requires = "hrsh7th/nvim-cmp",
    config = function()
      local cmp_source = { name = "cmp-cmdline", group_index = 2 }
      table.insert(lvim.builtin.cmp.sources, cmp_source)
    end,
    --event = "InsertEnter",
    --after = { "nvim-cmp" },
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },

  {
    "tpope/vim-surround",
    keys = { "c", "d", "y" }
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      require "user.matchup"
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    event = "BufRead",
    config = function()
      require("user.spectre").config()
    end,
  },
  {
    "rainbowhxch/accelerated-jk.nvim",
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("user.better-escape").config()
    end,
  },
  { "RRethy/nvim-align" },
  {
    "kevinhwang91/nvim-hlslens",
    config = function()
      require("user.nvim-hlslens").config()
    end,
  },
  {

  }
}
