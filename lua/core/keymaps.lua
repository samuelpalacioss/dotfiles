vim.g.mapleader = " "
vim.g.localleader = " "
-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Windows
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<C-w>", ":Bdelete!<CR>", opts)       -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Copy file paths
vim.keymap.set("n", "<leader>cf", "<cmd>let @+ = expand(\"%\")<CR>", { desc = "Copy File Name" })
vim.keymap.set("n", "<leader>cp", "<cmd>let @+ = expand(\"%:p\")<CR>", { desc = "Copy File Path" })

vim.keymap.set("n", "<leader>nd", function()
  pcall(function()
    require("noice").cmd("dismiss")
  end)

  local win_config = vim.api.nvim_win_get_config(0)
  if vim.bo.filetype == "noice" or win_config.relative ~= "" then
    vim.cmd("close")
  end
end, { desc = "Dismiss error and message windows" })
