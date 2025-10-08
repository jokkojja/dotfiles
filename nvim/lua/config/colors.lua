vim.o.termguicolors = true
vim.o.background = "dark"

vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE")

vim.cmd("hi Normal guifg=#c0c0c0 guibg=NONE")
vim.cmd("hi Comment guifg=#5c6370 gui=italic")
vim.cmd("hi Constant guifg=#d19a66")
vim.cmd("hi Identifier guifg=#e06c75")
vim.cmd("hi Statement guifg=#c678dd gui=bold")
vim.cmd("hi PreProc guifg=#56b6c2")
vim.cmd("hi Type guifg=#61afef gui=bold")
vim.cmd("hi Function guifg=#61afef gui=bold")
vim.cmd("hi String guifg=#98c379")
vim.cmd("hi Operator guifg=#c678dd")
vim.cmd("hi Keyword guifg=#c678dd gui=bold")
vim.cmd("hi Special guifg=#e06c75")
vim.cmd("hi Underlined guifg=#61afef gui=underline")

vim.cmd("hi CursorLine guibg=#2e2e2e")
vim.cmd("hi Visual guibg=#3e4451")
vim.cmd("hi LspReferenceText guibg=#3e4451")
vim.cmd("hi LspReferenceRead guibg=#3e4451")
vim.cmd("hi LspReferenceWrite guibg=#3e4451")

vim.cmd("hi Boolean guifg=#d19a66 gui=bold")
vim.cmd("hi Number guifg=#d19a66")
vim.cmd("hi Float guifg=#d19a66")

vim.o.cursorline = false

vim.cmd("hi CursorLine guibg=NONE guifg=NONE")
