require('lspinstall').setup()
local nvim_lsp = require('lspconfig')

DATA_PATH = vim.fn.stdpath "data"

nvim_lsp["cpp"].setup{on_attach = on_attach}
nvim_lsp["rust"].setup{on_attach = on_attach}
nvim_lsp["python"].setup{on_attach = on_attach}
nvim_lsp["html"].setup{on_attach = on_attach}
nvim_lsp["css"].setup{on_attach = on_attach}
nvim_lsp["cmake"].setup{on_attach = on_attach}
nvim_lsp["rust"].setup{
    on_attach = on_attach,
    cmd = {
        DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server",
        "--stdio"
    },
    filetypes = {
        "rust"
    },
    root_dir = function() return vim.loop.cwd() end
}
nvim_lsp["tsserver"].setup{
    on_attach = on_attach,
    cmd = {
        DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server",
        "--stdio"
    },
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
    },
    root_dir = function() return vim.loop.cwd() end
}

nvim_lsp["lua"].setup{
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {globals = {"vim", "use", "on_attach"}},
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                },
                maxPreload = 10000,
            },
        },
    },
}

require'compe'.setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = 'enable',
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,

    source = {
        path = true,
        buffer = true,
        calc = true,
        nvim_lsp = true,
        nvim_lua = true,
        ultisnips = false
    }
}
