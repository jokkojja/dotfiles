local M = {}

local function get_bg()
  local hl = vim.api.nvim_get_hl_by_name("Normal", true)
  return hl.background and string.format("#%06x", hl.background) or "NONE"
end

function M.setup()
  local bg = get_bg()

  vim.cmd("hi NormalFloat guibg=" .. bg .. " guifg=NONE")
  vim.cmd("hi FloatBorder guibg=" .. bg .. " guifg=#5c6370")
end

M.setup()

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = M.setup,
})

return M
