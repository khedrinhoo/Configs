vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>lc", "<cmd>VimtexCompile<CR>", { desc = "Compile LaTeX" })
vim.keymap.set("n", "<leader>ll", "<cmd>VimtexView<CR>", { desc = "View PDF" })
vim.keymap.set("n", "<leader>lk", "<cmd>VimtexStop<CR>", { desc = "Stop Compilation" })
