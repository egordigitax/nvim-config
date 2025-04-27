-- 08.01.2025
-- NVIM CONFIG
--

vim.opt.termguicolors = true

local opts = { buffer = bufnr, noremap = true, silent = true }

vim.api.nvim_set_keymap('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<Tab>', 'coc#pum#visible() ? coc#pum#next(1) : "<Tab>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "<S-Tab>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<Esc>', 'coc#pum#visible() ? coc#pum#cancel() : "<Esc>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {})
vim.api.nvim_set_keymap('n', 'gb', '<C-o>', opts)
vim.api.nvim_set_keymap('n', '<Space>r', '<Plug>(coc-rename)', {})
vim.api.nvim_set_keymap('n', '<Space>a', '<Plug>(coc-codeaction)', {})
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {})
vim.api.nvim_set_keymap('n', 'ff', '<Plug>(coc-format)', {})
vim.api.nvim_set_keymap('n', 'Ff', ':!make format<CR>', { noremap = true, silent = false })

vim.keymap.set('n', 'K', ":call CocAction('doHover')<CR>", { noremap = true, silent = true })

-- Keybinds
vim.keymap.set("n", "fi", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "fo", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "fl", "<cmd>Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "tm", ":Themery<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tm", ":Telescope colorscheme<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "ca", ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<ESC>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true })

-- Panels switch
vim.api.nvim_set_keymap('n', '<Leader><Tab>', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>s', '<cmd>vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h', '<cmd>split<CR>', { noremap = true, silent = true })

-- GPT
vim.keymap.set("n", "gg", "<cmd>ChatGPT<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "ge", "<cmd>ChatGPTEditWithInstruction<CR>", { noremap = true, silent = true })

-- Coc Binds
--
--
-- Unbind Comment Block
vim.api.nvim_del_keymap('n', 'gbc')
require('leap').create_default_mappings()
-- Bind Go Back to gb

-- Set tab width and use spaces instead of tabs
vim.opt.tabstop = 4      -- Number of spaces that a tab represents
vim.opt.shiftwidth = 4   -- Number of spaces used for each level of indentation
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.softtabstop = 4  -- Number of spaces a tab counts for while editing


-- Autosave setup
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
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
