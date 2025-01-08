return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      vimgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '--glob', '!vendor',
        '--max-filesize', '1M',
        '--ignore-file', '.gitignore',  -- Use existing .gitignore rules if needed
      }
    },
    pickers = {
      colorscheme = {
        enable_preview = true
      },
     find_files = {
		hidden = true,
		find_command = {
		  "rg",
		  "--files",
		  "--glob",
		  "!{**/.git,**/.next,.svelte-kit/*,target/*,**/node_modules,**/vendor,**/.idea}",
		  "--path-separator",
	      "/",
	     },
	  },
    }
  },
}
