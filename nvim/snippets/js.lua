local ls = require("luasnip")
local s = ls.s -- snippet
local i = ls.i -- insert node
local t = ls.t -- text node

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = snippet_node 

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {}


-- local myFirstSnippet = s("myFirstSnippet", { t"Hi! This is working"})
--
-- table.insert(snippets, myFirstSnippet)
-- return snippets, autosnippets
-- myFirstSnippet
ls.add_snippets("all", {
	s("fun", {
		-- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
		t("function "), i(1, "name"), t(" ( "), i(2, "params"), t(" ) { "), i(3, "code"), t(" } ")
	})
})
        
