-- set leader key to space
vim.g.mapleader = " "


---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true})

-- clear search highlights
vim.api.nvim_set_keymap("n", "<leader>nh", ":nohl<CR>", {noremap = true})

-- delete single character without copying into register
vim.api.nvim_set_keymap("n", "x", '"_x', {noremap = true})

-- increment/decrement numbers
vim.api.nvim_set_keymap("n", "<leader>+", "<C-a>", {noremap = true}) -- increment
vim.api.nvim_set_keymap("n", "<leader>-", "<C-x>", {noremap = true}) -- decrement

-- window management
vim.api.nvim_set_keymap("n", "<leader>sv", "<C-w>v", {noremap = true}) -- split window vertically
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>s", {noremap = true}) -- split window horizontally
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", {noremap = true}) -- make split windows equal width & height
vim.api.nvim_set_keymap("n", "<leader>sx", ":close<CR>", {noremap = true}) -- close current split window

vim.api.nvim_set_keymap("n", "<leader>to", ":tabnew<CR>", {noremap = true}) -- open new tab
vim.api.nvim_set_keymap("n", "<leader>tx", ":tabclose<CR>", {noremap = true}) -- close current tab
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabn<CR>", {noremap = true}) --  go to next tab
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabp<CR>", {noremap = true}) --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
vim.api.nvim_set_keymap("n", "<leader>sm", ":MaximizerToggle<CR>", {noremap = true}) -- toggle split window maximization

-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true}) -- toggle file explorer

-- telescope
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {noremap = true}) -- find files within current working directory, respects .gitignore
vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", {noremap = true}) -- find string in current working directory as you type
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", {noremap = true}) -- find string under cursor in current working directory
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {noremap = true}) -- list open buffers in current neovim instance
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {noremap = true}) -- list available help tags

-- telescope git commands (not on youtube nvim video)
vim.api.nvim_set_keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", {noremap = true}) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.api.nvim_set_keymap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", {noremap = true}) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.api.nvim_set_keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", {noremap = true}) -- list git branches (use <cr> to checkout) ["gb" for git branch]
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", {noremap = true}) -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
vim.api.nvim_set_keymap("n", "<leader>rs", ":LspRestart<CR>", {noremap = true}) -- mapping to restart lsp if necessary
