-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Escape insert mode with jk or jj
map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
map("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

map("n", "<leader>cr", [[:%s/\\[ntr]//g<CR>]], { desc = "Remove \\n, \\t, \\r from buffer" })

map("n", "<leader>cf", function()
  vim.cmd("write") -- save first
  vim.cmd("!dprint fmt %")
  vim.cmd("edit!") -- reload file after formatting
end, { desc = "Format current buffer with dprint" })
