-- https://github.com/lukas-reineke/indent-blankline.nvim

-- disable indent in file type

local M = {}

M.config = function()
  local status_ok, indent_blankline = pcall(require, "indent_blankline")
  if not status_ok then
    return
  end
  indent_blankline.setup(
    {
    show_current_context = true,
    show_current_context_start = false,
    show_end_of_line = true
  }
  )

  vim.g.indent_blankline_filetype_exclude = {
    "NvimTree",
    "aerial",
    "undotree",
    "spectre_panel",
    "dbui",
    "toggleterm",
    "notify",
    "packer",
    "lsp-installer",
    "help"
  }
end

return M
