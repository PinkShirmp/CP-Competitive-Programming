--require plugins 
local suc,err=require('plugins')
if(not suc) then
    print(err)
end
--set stuff
--vim.cmd("syntax on")
vim.cmd('set noerrorbells')
vim.cmd('set tabstop=4 softtabstop=4')
vim.cmd('set smartindent')
vim.cmd('set smarttab')
vim.cmd('set autoindent')
vim.cmd('set cindent')
vim.cmd('set shiftwidth=4')
vim.cmd('set expandtab')
vim.cmd('set nu')
vim.cmd('set relativenumber')
vim.cmd('set ruler')
vim.cmd('set guifont=*')
vim.cmd('set backspace=indent,eol,start')
vim.cmd('set clipboard=unnamed')
--vim plug--
local Plug=vim.fn['plug#']
vim.call('plug#begin')

Plug ('preservim/nerdtree')
vim.call('plug#end')
--nerdtree--
-- Map <leader>n to NERDTreeFocus
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
-- Map <C-n> to NERDTree
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })
-- Map <C-t> to NERDTreeToggle
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
-- Map <C-f> to NERDTreeFind
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', { noremap = true, silent = true })
--background and stuff

vim.cmd(":colorscheme blue")
--the cd--
vim.api.nvim_command("cd C:/Users/Admin/Desktop/code")
--compiler--
vim.api.nvim_command([[autocmd FileType cpp nnoremap <F5> :w <bar> execute ':!start cmd.exe /k "g++ -std=c++17 -O2 -Wall % -o %:r && %:r.exe && pause&&exit"'<CR>]])



