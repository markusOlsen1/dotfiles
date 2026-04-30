-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>fw", function()
  Snacks.picker.grep_word()
end, { desc = "Find word under cursor" })

map("x", "<leader>a", "<Plug>SlimeRegionSend")
map("n", "<leader>a", "<Plug>SlimeMotionSend")
map("n", "<leader>k", "<Plug>SlimeLineSend")
