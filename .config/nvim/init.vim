set number
set relativenumber
set expandtab
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set scrolloff=8
set guicursor=
set termguicolors

syntax on
colorscheme tokyonight-night 

let mapleader = " "

nnoremap <leader>pv :Ex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-E> :copen<CR>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y gg "+yG

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>en <cmd>lua require('telescope.builtin').find_files({cwd='~/.config/nvim'})<CR>

lua require('adriankuklinski.plugins')
lua require('adriankuklinski.telescope')
lua require('adriankuklinski.lsp')
lua require('adriankuklinski.completion')
lua require('adriankuklinski.treesitter')
