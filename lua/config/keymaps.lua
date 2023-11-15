-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--vim.g.mapleader = ","

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- -- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- New Tab
keymap.set("n", "te", "tabedit", opts)

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
--keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
--keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Split window
keymap.set("n", "ss", ":split<Return>")
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
