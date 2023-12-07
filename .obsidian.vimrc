-- General options
vim.wo.number = true
vim.wo.relativenumber = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 20
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/bin/zsh"
vim.opt.swapfile = false

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel = 99

-- Mouse settings
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Window splitting behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_set_keymap("x", "p", '"_dP', { noremap = true, silent = true })

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indentation settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Clearing highlights
vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])

-- Key mappings
vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")
vim.keymap.set("v", "<leader>/", ":CommentToggle<CR>")

-- Other
vim.keymap.set("n", "<s-J>", "")
vim.keymap.set("v", "<s-J>", "")
vim.keymap.set("n", "<leader>w", ":w<CR>")


vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "j<leader>", "<Esc>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

