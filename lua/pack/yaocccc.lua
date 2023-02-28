local G = require('G')
local M = {}

function M.config()
    -- vim-echo
    G.map({
        { 'v', 'C', ':<C-u>VECHO<CR>', { silent = true, noremap = true } },
    })
    G.g.vim_echo_by_file = {
        js = 'console.log([ECHO])',
        ts = 'console.log([ECHO])',
        vue = 'console.log([ECHO])',
    }

    -- vim-comment
    G.g.vim_line_comments = {
        vim = '"',
        vimrc = '"',
        js = '//',
        ts = '//',
        java = '//',
        class = '//',
        c = '//',
        h = '//',
        go = '//',
        lua = '--',
        proto = '//',
        ['go.mod'] = '//',
        md = '[^_^]:',
        vue = '//',
        sql = '--',
        sol = '//',
    }
    G.g.vim_chunk_comments = {
        js = {'/**', ' *', ' */'},
        ts = {'/**', ' *', ' */'},
        sh = {':<<!', '', '!'},
        proto = {'/**', ' *', ' */'},
        md = {'[^_^]:', '    ', ''},
        vue = {'/**', ' *', ' */'},
        sol = {'/**', ' *', ' */'},
    }
    G.map({
        { 'n', '<Space>;', ':NToggleComment<CR>',      { silent = true, noremap = true } },
        { 'v', '<Space>;', ':<C-u>VToggleComment<CR>', { silent = true, noremap = true } },
        { 'n', '??',       ':NToggleComment<CR>',      { silent = true, noremap = true } },
        { 'v', '/',        ':<C-u>VToggleComment<CR>', { silent = true, noremap = true } },
        { 'v', '?',        ':<C-u>CToggleComment<CR>', { silent = true, noremap = true } },
    })
end

function M.setup()
    -- do nothing
end

return M
