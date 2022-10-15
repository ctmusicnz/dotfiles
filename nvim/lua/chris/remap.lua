local nnoremap = require("chris.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>D", vim.lsp.buf.type_definition)
