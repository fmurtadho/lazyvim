-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local env_group = vim.api.nvim_create_augroup("EnvFiles", { clear = true })

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = env_group,
  pattern = { ".env", ".env.*" },
  callback = function()
    vim.b.autoformat = false
  end,
})
