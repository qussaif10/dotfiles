vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.breakindent = true

vim.opt.number = true

vim.opt.showmode = false

vim.opt.undofile = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<C-u>", "<C-u>zz", {})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})

vim.keymap.set("n", "<leader>h", "<C-w>h", {})
vim.keymap.set("n", "<leader>j", "<C-w>j", {})
vim.keymap.set("n", "<leader>k", "<C-w>k", {})
vim.keymap.set("n", "<leader>l", "<C-w>l", {})

vim.keymap.set("n", "<leader>vp", ":vsp<CR>", {})
vim.keymap.set("n", "<leader>sp", ":sp<CR>", {})
