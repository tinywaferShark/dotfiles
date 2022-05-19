--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMP CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

--plugins
require "user.plugins"
require "user.keybindings"
require "user.lsp"
-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"

vim.o.guifont = "JetBrainsMono Nerd Font"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false


-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  --  "verilog",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- ---@usage disable automatic installation of servers
-- require("lvim.lsp.manager").setup("veridian") {
--   cmd = { "veridian" },
--   filetypes = { "verilog", "systemverilog" },
--   single_filesupport = true,
--   root_dir = function()
--     return vim.fn.getcwd()
--   end,
-- }
-- local opts = {}
-- require("lvim.lsp.manager").setup("veridian", opts)
