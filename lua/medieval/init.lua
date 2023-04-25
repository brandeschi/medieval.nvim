local M = {}

-- default configs
M.config = {
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  palette_overrides = {},
  overrides = {},
  dim_inactive = true,
  transparent_mode = false,
}

function M.setup(config)
  M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

M.load = function()
  if vim.version().minor < 9 then
    vim.notify_once("medieval.nvim: you must use Neovim 0.9 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = "medieval"
  vim.o.termguicolors = true

  local groups = require("medieval.groups").setup()

  -- add highlights
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
