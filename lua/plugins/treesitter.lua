return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
      -- Scripting languages
      "bash", "perl", "powershell", "python", "lua", "ruby", "php",

      -- Web development
      "javascript", "typescript", "tsx", "vue", "html", "css", "scss", 
      "json", "yaml", "graphql", "markdown", "markdown_inline",
      "go", 

      -- DevOps and infrastructure
      "dockerfile", "hcl", "nix", "toml", "make", "sql",

      -- Miscellaneous
      "c", "cpp", "java", "kotlin", "swift", "dart", "elixir",
      "latex", "xml", "org", "rst", "glsl", "gdscript",

      -- Core and query support
      "vim", "vimdoc", "query"
    },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
