-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local hl_groups = {
      "Normal",
      "NormalFloat",
      "NormalNC",
      "SignColumn",
      "LineNr",
      "CursorLineNr",
      "EventToEdge",
      "EndOfBuffer",
      "MsgArea",
      "StatusLine",
      "StatusLineNC",
      "NeoTreeNormal",
      "NeoTreeNormalNC",
    }
    for _, group in ipairs(hl_groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
})
