return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true
    },
    {
        'folke/tokyonight.nvim', -- Example colorscheme
        opts = {
            style = 'storm',     -- Set a specific style (storm, night, day, moon)
        },
    },
    {
        "hachy/eva01.vim",
    },
    {
        "rebelot/kanagawa.nvim"
    },
    {
        "comfysage/evergarden"
    },
    {
        "savq/melange-nvim"
    },
    {
        "zaldih/themery.nvim",
        lazy = false,
        opts = {
            themes = {
                {
                    name = "Melange",
                    colorscheme = "melange",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Kanagawa",
                    colorscheme = "kanagawa",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Evergarden",
                    colorscheme = "evergarden",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Gruvbox",
                    colorscheme = "gruvbox",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Torte",
                    colorscheme = "torte",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Blue",
                    colorscheme = "blue",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Tokyonight",
                    colorscheme = "tokyonight",
                    before = [[
                        vim.opt.background = "dark"
                    ]]
                },
                {
                    name = "Eva01",
                    colorscheme = "eva01",
                },
                {
                    name = "Eva01-LCL",
                    colorscheme = "eva01-LCL",
                },
                {
                    name = "Kanagawa",
                    colorscheme = "kanagawa",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
            },
        }
    }
}
