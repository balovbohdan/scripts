local api = vim.api
local g = vim.g
local opt = vim.opt

-- Better Netrw
-- Some settings are covered by "tpope/vim-vinegar"
g.netrw_banner = 0 -- Hide banner
g.netrw_browse_split = 2 -- Open in left pane
g.netrw_altv = 1 -- Open with right splitting
g.netrw_liststyle = 3 -- Tree-style view
g.netrw_winsize = 75
g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]] -- use .gitignore

-- Remap leader and local leader to <Space>
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
g.mapleader = " "
g.maplocalleader = " "

opt.termguicolors = true -- Enable colors in terminal
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.relativenumber = true --Make relative number default
opt.mouse = "a" --Enable mouse mode
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case
opt.updatetime = 250 --Decrease update time
opt.signcolumn = "yes" -- Always show sign column
opt.clipboard = "unnamedplus" -- Access system clipboard
opt.guifont = { "Hack", "h20" }
opt.encoding = "utf-8"

-- Time in milliseconds to wait for a mapped sequence to complete.
opt.timeoutlen = 300

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

