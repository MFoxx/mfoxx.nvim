vim.g.mapleader = " "

local keymap = vim.keymap

-- jk to escape
keymap.set("i", "jk", "<ESC>")

-- general keymaps
keymap.set("n", "<leader>cs", ":nohl<CR>")
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "x", "_x")

-- new tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabnext<CR>")
keymap.set("n", "<leader>tp", ":tabprevious<CR>")

-- move selection up and down -- MAC Fix
keymap.set("n", "ß", ":m .+1<CR>==")
keymap.set("n", "∑", ":m .-2<CR>==")
keymap.set("v", "ß", ":m '>+1<CR>gv=gv")
keymap.set("v", "∑", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader><Up>", "<C-a>")
keymap.set("n", "<leader><Down>", "<C-x>")

-- format all
keymap.set("n", "<leader>fa", "gg=G<CR>")

-- maximazer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope keymaps
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", builtin.live_grep, {})
keymap.set("n", "<leader>fc", builtin.buffers, {})
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- custom function keympas
keymap.set("n", "<leader>nn", "<cmd>:lua _NODE_TOGGLE() <CR><cmd>")
keymap.set("n", "<leader>ng", "<cmd>:lua _LAZYGIT_TOGGLE() <CR><cmd>")
