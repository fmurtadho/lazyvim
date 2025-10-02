-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local eslint_group = vim.api.nvim_create_augroup("EslintFixOnSave", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  group = eslint_group,
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx" },
  callback = function()
    vim.cmd("LspEslintFixAll")
  end,
})
