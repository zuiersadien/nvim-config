-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>wz", function()
  if vim.t.maximized then
    vim.cmd("wincmd =") -- Restaurar la disposición de ventanas
    vim.t.maximized = false
  else
    vim.cmd("wincmd |") -- Maximiza horizontalmente
    vim.cmd("wincmd _") -- Maximiza verticalmente
    vim.t.maximized = true
  end
end, { desc = "Maximizar/Restaurar ventana actual" })
