local cmd = vim.cmd
local g = vim.g
local opt = vim.opt

g.mapleader = " "

cmd [[packadd packer.nvim]]
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
    use 'kassio/neoterm'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use "akinsho/toggleterm.nvim"
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'neovim/nvim-lspconfig'
    use {
        'hrsh7th/nvim-compe',
        requires = { {'hrsh7th/vim-vsnip'} }
    }
end)

require('onedark').load()
require('map')
require('lsp')
require('compe-config')

-- default options
opt.completeopt = {'menu', 'menuone', 'noselect'}
opt.mouse = 'a'
opt.splitright = true
opt.splitbelow = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
-- set diffopt+=vertical " starts diff mode in vertical split
opt.cmdheight = 1
-- set shortmess+=c " don't need to press enter so often
opt.signcolumn = 'yes'
opt.updatetime = 520
opt.undofile = true
cmd('filetype plugin on')
opt.backup = false

vim.cmd('set clipboard+=unnamedplus')

require("toggleterm").setup{
    size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    direction = 'float',
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    shade_terminals = true,
    close_on_exit = true,
    float_opts = {
        winblend = 3,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
}
