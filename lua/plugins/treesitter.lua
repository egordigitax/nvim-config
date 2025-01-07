return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Keeps parsers updated
  opts = {
    ensure_installed = {
      -- Scripting languages
      "bash", "perl", "powershell", "python", "lua", "ruby", "php",

      -- Web development
      "javascript", "typescript", "tsx", "vue", "html", "css", "scss", 
      "sass", "json", "yaml", "graphql", "markdown", "markdown_inline",
      "go", "gomod", "goctl",

      -- DevOps and infrastructure
      "dockerfile", "hcl", "nix", "toml", "make", "sql",

      -- Miscellaneous
      "c", "cpp", "java", "kotlin", "swift", "dart", "elixir",
      "latex", "xml", "org", "rst", "glsl", "gdscript", "shaderlab",

      -- Core and query support
      "vim", "vimdoc", "query"
    },
    highlight = {
      enable = true, -- Enable syntax highlighting
    },
    indent = {
      enable = true, -- Enable indentation
    },
    auto_install = true, -- Automatically install missing parsers
  },
}
