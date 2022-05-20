local M = {}

M.config = function()
  local status_ok, catppuccin = pcall(require, "catppuccin")
  if not status_ok then
    return
  end
  local cfg = {
    transparent_background = false,
    term_colors = false,
    styles = {
      comments = "italic",
      functions = "italic",
      keywords = "italic",
      strings = "NONE",
      variables = "italic"
    },
    integrations = {
      cmp = true,
      lsp_saga = true,
      telescope = true,
      treesitter = true,
      gitsigns = true,
      which_key = true,
      bufferline = true,
      ts_rainbow = true,
      markdown = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = "NONE",
          hints = "NONE",
          warnings = "NONE",
          information = "NONE"
        },
        underlines = {
          errors = "underline",
          hints = "underline",
          warnings = "underline",
          information = "underline"
        }
      },
      indent_blankline = {
        enabled = true,
        colored_indent_levels = false
      },
      nvimtree = {
        enabled = true,
        show_root = false,
        transparent_panel = false,
      },
      lsp_trouble = false,
      gitgutter = false,
      neotree = {
        enabled = false,
        show_root = false,
        transparent_panel = false
      },
      dashboard = false,
      neogit = false,
      vim_sneak = false,
      fern = false,
      barbar = false,
      lightspeed = false,
      hop = true,
      notify = true,
      telekasten = false,
      symbols_outline = false
    }
  }
  catppuccin.setup(cfg)
end

return M
