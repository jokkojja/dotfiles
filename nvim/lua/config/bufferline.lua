local function fix_visual()
  local hl = vim.api.nvim_get_hl_by_name("Normal", true)
  local bg = hl.background and string.format("#%06x", hl.background) or "NONE"

  -- CursorLine прозрачная
  vim.o.cursorline = false
  vim.cmd("hi CursorLine guibg=NONE guifg=NONE")

  -- Tabline прозрачная
  vim.cmd("hi TabLine guibg=" .. bg .. " guifg=#7f848e")
  vim.cmd("hi TabLineSel guibg=" .. bg .. " guifg=#abb2bf")
  vim.cmd("hi TabLineFill guibg=" .. bg)
  vim.cmd("hi TabLineSeparator guibg=" .. bg .. " guifg=" .. bg)
end

-- Применяем после полной загрузки Neovim и темы
vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  pattern = "*",
  callback = fix_visual,
})
