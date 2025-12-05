" --- Plugin Setup ---
call plug#begin('~/.local/share/nvim/plugged')

" File explorer (VS Code-style)
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'  " Adds nice icons (optional)

call plug#end()

" --- Plugin Configuration ---
lua << EOF
require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
    relativenumber = true,
  },
  renderer = {
    highlight_opened_files = "name",
    indent_markers = { enable = true },
  },
  filters = { dotfiles = false },
})
EOF

" --- Keybinds ---
nnoremap <leader>e :NvimTreeToggle<CR>
