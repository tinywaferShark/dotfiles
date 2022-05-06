return {
  {
    "ur4ltz/surround.nvim",
    event = "BufRead",
    config = function()
      require("surround").setup { mappings_style = "surround" }
    end,
  },
  {
    "phaazon/hop.nvim",
    branch = "v1", -- optional but strongly recommended
    cmd = {
      "HopChar1CurrentLine",
      "HopChar2",
    },
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  -- 自动保存
  {
    "Pocco81/AutoSave.nvim",
    config = function()
        require("user.plugins.AutoSave")
    end
  },
  { 'rainbowhxch/accelerated-jk.nvim' ,
    config = function()
     require("user.plugins.accelerated-jk-nvim")
      end
  },
  -- 全局替换
  {
    "nvim-pack/nvim-spectre",
    requires = {
        "nvim-lua/plenary.nvim", -- Lua 开发模块
        "BurntSushi/ripgrep" -- 文字查找
    },
    config = function()
        require("user.plugins.nvim-spectre")
    end
},
--todo tree
{
  "folke/todo-comments.nvim",
  config = function()
      require("user.plugins.todo-comments")
  end
}

}
