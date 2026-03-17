return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = 'cd app && npm install',
  },
  { -- render markdown inside neovim
    'OXY2DEV/markview.nvim',
    lazy = false,
  },
}
