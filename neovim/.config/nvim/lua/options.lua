vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.breakindent = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 500

vim.opt.number = true
vim.opt.showmode = false
vim.opt.undofile = true

vim.opt.virtualedit = "block"

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Selected Up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Selected Down" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste Without Copy" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete Without Copy" })

vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move To Left Split" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move To Below Split" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move To Above Split" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move To Right Split" })

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>vp", "<cmd>vsp<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>sp", "<cmd>sp<CR>", { desc = "Horizontal Split" })
