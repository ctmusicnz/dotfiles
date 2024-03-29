local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require'lspconfig'.intelephense.setup{
    capabilities = capabilities,
    on_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_prev, {buffer=0})
    vim.keymap.set("n", "<leader>dl", ":Telescope diagnostics<cr>", {buffer=0})
    vim.keymap.set("n", "<leader>tr", ":Telescope lsp_references<cr>", {buffer=0})
    -- vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
    end,
    settings = {
        intelephense = {
            stubs = {
  "apache",
        "bcmath",
        "bz2",
        "calendar",
        "com_dotnet",
        "Core",
        "ctype",
        "curl",
        "date",
        "dba",
        "dom",
        "enchant",
        "exif",
        "FFI",
        "fileinfo",
        "filter",
        "fpm",
        "ftp",
        "gd",
        "gettext",
        "gmp",
        "hash",
        "iconv",
        "imap",
        "intl",
        "json",
        "ldap",
        "libxml",
        "mbstring",
        "meta",
        "mysqli",
        "oci8",
        "odbc",
        "openssl",
        "pcntl",
        "pcre",
        "PDO",
        "pdo_ibm",
        "pdo_mysql",
        "pdo_pgsql",
        "pdo_sqlite",
        "pgsql",
        "Phar",
        "posix",
        "pspell",
        "readline",
        "Reflection",
        "session",
        "shmop",
        "SimpleXML",
        "snmp",
        "soap",
        "sockets",
        "sodium",
        "SPL",
        "sqlite3",
        "standard",
        "superglobals",
        "sysvmsg",
        "sysvsem",
        "sysvshm",
        "tidy",
        "tokenizer",
        "xml",
        "xmlreader",
        "xmlrpc",
        "xmlwriter",
        "xsl",
        "Zend OPcache",
        "zip",
        "zlib",
        "wordpress"            }
        }
    }
}
