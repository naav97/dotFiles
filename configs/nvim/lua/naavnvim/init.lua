require("naavnvim.remap")
require("naavnvim.packer")
require("naavnvim.set")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
-- require("elixir").setup()

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

vim.cmd("colorscheme habamax")
vim.cmd('highlight MatchParen ctermbg=blue guibg=lightblue')
vim.cmd [[ autocmd BufEnter *.svelte set syntax=html ]]

-- Set list to true to enable the display of whitespace characters
vim.opt.list = true

-- Set the listchars option with your desired characters
vim.opt.listchars = {
    tab = '→ ',      -- Display a tab with '→' followed by a space
    space = '·',     -- Display a space with '·'
    nbsp = '␣',      -- Display a non-breaking space with '␣'
    trail = '•',     -- Display trailing spaces with '•'
    eol = '¶',       -- Display end of line with '¶'
    precedes = '«',  -- Display when text precedes the screen with '«'
    extends = '»'    -- Display when text extends beyond the screen with '»'
}
