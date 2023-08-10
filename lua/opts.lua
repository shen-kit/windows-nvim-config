opt = vim.opt

-- general
opt.number          = true
opt.relativenumber  = true
opt.autoindent 		  = true
opt.expandtab	      = true
opt.shiftround      = true                -- align indent to next multiple of shiftwidth
opt.smarttab        = true
opt.shiftwidth      = 2
opt.tabstop         = 2
opt.encoding        = 'utf-8'
opt.swapfile        = false
opt.undofile        = true                -- persistent undo (even after closing a file)

-- display
opt.scrolloff       = 10
opt.sidescrolloff   = 8
opt.wrap            = true
opt.foldmethod      = 'indent'
opt.foldenable      = true
opt.foldlevel       = 99                  -- default unfolded
opt.backspace       = 'indent,eol,start'  -- backspace deletes indents and new lines
opt.history         = 500
opt.showbreak       = '↪'                 -- character shown before soft-wrapped lines
opt.pumheight       = 10                  -- max pop-up menu height
opt.termguicolors   = true
opt.splitright	    = true
opt.splitbelow	    = true

-- misc
opt.mouse           = 'a'
opt.clipboard       = 'unnamed'

-- search
opt.hlsearch        = true
opt.ignorecase      = true
opt.smartcase       = true
opt.incsearch       = true


