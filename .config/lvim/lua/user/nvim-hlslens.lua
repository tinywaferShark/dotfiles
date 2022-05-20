local M = {}
M.config = function()
  local status_ok, nvim_hlslens = pcall(require, "nvim-hlslens")
  if not status_ok then
    return
  end

  local cfg = {
    calm_down = true,
    nearest_only = false
  }

  -- recommanded:
  nvim_hlslens.setup(cfg) -- no need to specify bufnr if you don't use toggle_key
end

return M
