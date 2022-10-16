if vim.g.snippets ~= "luasnip" or not pcall(require, "luasnip") then
  return
end

local ls = require("luasnip")
local s = ls.snippet
local types = require "luasnip.util.types"

ls.config.set_config {
    history = true,
    updateevents = "TextChanged, TextChangedI",
}


-- vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")

-- ls.parser.parse_snippet(<text>, <VSCODE style snippet>)
ls.add_snippets( "all", {
    -- Available in any filetype
    -- ls.parser.parse_snippet("expand", "-- this is what was expanded!"),
    s("expand", {"-- this is what was expanded!" })
})
ls.add_snippets("all", {
	s("ternary", {
		-- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
		i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
	})
})

-- <c-k> is my expansion key
-- this will expand the current item or jump to the next item within the snippet
vim.keymap.set({ "i", "s" }, "<c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jumpable()
    end 
end, {silent = true})

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

-- <c-l> is selecting within a list of options.
-- This is useful for choice nodes 
vim.keymap.set({ "i" }, "<c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)
