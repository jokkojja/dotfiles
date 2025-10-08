local function setup_neotree()
  local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)
  local bg = normal_hl.background

  local bg_color = bg and string.format("#%06x", bg) or "NONE"

  vim.cmd("hi NeoTreeNormal guibg=" .. bg_color .. " guifg=NONE")
  vim.cmd("hi NeoTreeNormalNC guibg=" .. bg_color .. " guifg=NONE")
end

setup_neotree()
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = setup_neotree,
})
