return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl", -- Specify the main module
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        indent = { char = "│" },
        scope = { enabled = false },
    },
}
