-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
vim.opt.colorcolumn = "100" -- Highlights the 80th and 100th columns
vim.diagnostic.config({
  virtual_text = {
    format = function(diagnostic)
      return diagnostic.message -- Show full messages inline
    end,
    spacing = 2,
    source = "if_many",
  },
  float = {
    source = "always", -- Show the error's source in floating windows
  },
})
