return {
  "rebelot/kanagawa.nvim",
  enabled = true,
  config = function()
    require("kanagawa").setup({
      compile = false,             -- enable compiling the colorscheme
      undercurl = true,            -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = { bold = true },
      keywordStyle = { italic = true},
      statementStyle = {},
      typeStyle = {},
      transparent = false,         -- do not set background color
      dimInactive = true,         -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      colors = {                   -- add/modify theme and palette colors
	palette = {},
	theme = {
	  wave = {},
	  lotus = {},
	  dragon = {
	    ui = {
	      float = {
		bg = "none",
	      },
	    }
	  },
	  all = {
	    ui = {
	      bg_gutter = "none"
	    }
	  }
	},
      },
      overrides = function(colors)
	local theme = colors.theme
	return {}
      end,
      theme = "wave",              -- Load "wave" theme when 'background' option is not set
      background = {               -- map the value of 'background' option to a theme
	dark = "dragon",           -- try "dragon" !
	light = "lotus"
      },
    })
    vim.cmd.colorscheme "kanagawa"
  end
}

