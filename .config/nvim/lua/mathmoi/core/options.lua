local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number         = true

-- tabs & indentation
opt.tabstop    = 3
opt.shiftwidth = 3
opt.expandtab  = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase  = true

-- curosor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- Use the system clipboard

-- split windows
opt.splitright = true
opt.splitbelow = true

-- Others
opt.iskeyword:append("-") -- Makes '-' part of words

opt.colorcolumn = "81,91,121"
