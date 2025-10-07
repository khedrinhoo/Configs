vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w")
vim.keymap.set("n", "<leader>q", ":q")
vim.keymap.set("n", "<leader>wq", ":wq")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
