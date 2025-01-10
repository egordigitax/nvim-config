-- coc.lua
return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        -- Basic Coc settings
        vim.g.coc_global_extensions = {
            "coc-json",
            "coc-html",
            "coc-css",
            "coc-tsserver",
            "coc-python",
            "coc-yaml",
            "coc-sh",
            "coc-prettier",
            "coc-eslint",
            "@yaegassy/coc-volar",       -- Vue.js support
            "coc-react-refactor", -- React refactoring tools
            "coc-go",          -- Go language server
            "coc-rust-analyzer" -- Rust language server
        }

        -- Example key mappings for Coc
        local keyset = vim.keymap.set

        -- Use Tab for trigger completion and navigate
        local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
        keyset("i", "<Tab>", [[coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]], opts)
        keyset("i", "<S-Tab>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"]], opts)

        -- Confirm selection
        keyset("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], opts)

        -- Show documentation
        keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })

        function _G.show_docs()
            local cw = vim.fn.expand("<cword>")
            if vim.fn.index({ "vim", "help" }, vim.bo.filetype) >= 0 then
                vim.cmd("h " .. cw)
            elseif vim.api.nvim_eval("coc#rpc#ready()") then
                vim.fn.CocActionAsync("doHover")
            else
                vim.cmd("!" .. vim.o.keywordprg .. " " .. cw)
            end
        end

        -- Format on save
        vim.cmd([[
          augroup FormatOnSave
            autocmd!
            autocmd BufWritePre * silent! :CocCommand prettier.formatFile
          augroup END
        ]])

        -- Diagnostics keymaps
        keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
        keyset("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })

        -- Code actions
        keyset("n", "<leader>ca", "<Plug>(coc-codeaction)", { silent = true })

        -- Rename symbol
        keyset("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })
    end
}

