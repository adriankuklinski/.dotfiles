local Remap = require("adriankuklinski.keymaps")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader>u", ":UndotreeShow<CR>")

nnoremap("q:", ":q")

-- shift selected lines vertical
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- keep indented text highlighted
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- yank without jank
vnoremap("y", "myy`y");
vnoremap("p", "\"_dP")

inoremap(";;", "<Esc>A;")
inoremap(",,", "<Esc>A,")

-- paste from system clipboard
xnoremap("<leader>p", "\"_dP")

-- copy to clipboard
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

-- executable permissions
nnoremap("<leader>x", ":!chmod +x %<CR>")

nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- half page vertical scroll with line centering
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

inoremap("<C-c>", "<Esc>")

-- git blame
nnoremap("<leader>gb", ":GitBlameToggle<CR>")


