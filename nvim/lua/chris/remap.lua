local nnoremap = require("chris.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>D", vim.lsp.buf.type_definition)
nnoremap("<leader><leader>s", "<cmd>source /home/chris/.config/nvim/after/plugin/luasnip.lua<CR>")
