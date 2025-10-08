return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  config = function()
    vim.g.mkdp_auto_start = 1 -- Auto-start preview when opening Markdown
    vim.g.mkdp_refresh_slow = 1
  end,
}
