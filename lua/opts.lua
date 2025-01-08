-- 08.01.2025
-- NVIM CONFIG

-- Keybinds
vim.keymap.set("n", "fi", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "fo", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "ff", ":call CocActionAsync('format')<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "fl", "<cmd>Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "tm", ":Themery<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tm", ":Telescope colorscheme<CR>", { noremap = true, silent = true })

-- Coc Binds
vim.keymap.set("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.keymap.set("n", "gr", "<Plug>(coc-references)", {silent = true})
vim.keymap.set("n", "<leader>r", "<Plug>(coc-refactor)", {silent = true})
-- Unbind Comment Block
vim.api.nvim_del_keymap('n', 'gbc')
vim.api.nvim_set_keymap('n', 'gb', '<C-o>', { noremap = true, silent = true })

-- Set tab width and use spaces instead of tabs
vim.opt.tabstop = 4        -- Number of spaces that a tab represents
vim.opt.shiftwidth = 4     -- Number of spaces used for each level of indentation
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.softtabstop = 4    -- Number of spaces a tab counts for while editing


-- Autosave setup
vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged"}, {
  pattern = "*",
  command = "silent! w",
})

-- Auto-save when focus is lost
vim.api.nvim_create_autocmd("FocusLost", {
  pattern = "*",
  command = "silent! wa",
})
-- Line numbers
vim.o.number = true

vim.opt.clipboard:append("unnamedplus")

vim.cmd('syntax off')
