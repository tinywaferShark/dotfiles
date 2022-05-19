-- https://github.com/nvim-pack/nvim-spectre

-- WARN: spectre manually install dependencies sed and ripgrep

-- • yay -S sed
-- • https://github.com/BurntSushi/ripgrep
local M = {}
M.config = function()
  local status_ok, spectre = pcall(require, "spectre")
  if not status_ok then
    return
  end

  local cfg = {
    mapping = {
      ["toggle_line"] = {
        map = "dd",
        cmd = "<cmd>lua require('spectre').toggle_line()<cr>",
        desc = "toggle current item"
      },
      ["select_entry"] = {
        map = "<cr>",
        cmd = "<cmd>lua require('spectre.actions').select_entry()<cr>",
        desc = "goto current file"
      },
      ["show_option_menu"] = {
        map = "<leader>o",
        cmd = "<cmd>lua require('spectre').show_options()<cr>",
        desc = "show option"
      },
      ["run_replace"] = {
        map = "<leader>r",
        cmd = "<cmd>lua require('spectre.actions').run_replace()<cr>",
        desc = "replace all"
      },
      ["change_view_mode"] = {
        map = "<leader>v",
        cmd = "<cmd>lua require('spectre').change_view()<cr>",
        desc = "change result view mode"
      }
    }
  }

  -- recommanded:
  spectre.setup(cfg) -- no need to specify bufnr if you don't use toggle_key
end

return M
