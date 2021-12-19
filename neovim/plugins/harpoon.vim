Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'

nnoremap <leader><leader> :lua require('harpoon.ui').toggle_quick_menu()<cr>
nnoremap <leader>ha :lua require('harpoon.mark').add_file()<cr>
nnoremap <leader>1 :lua require('harpoon.ui').nav_file(1)<cr>
nnoremap <leader>2 :lua require('harpoon.ui').nav_file(2)<cr>
nnoremap <leader>3 :lua require('harpoon.ui').nav_file(3)<cr>
nnoremap <leader>4 :lua require('harpoon.ui').nav_file(4)<cr>
