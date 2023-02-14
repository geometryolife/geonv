local G = require('G')

G.map({
    -- 设置 s t 无效 ;=: , 重复上一次宏操作
    { 'n', '<Space>;', ':NToggleComment<CR>', {silent = true, noremap = true}},
    -- { 'n', '<Space>;', ':echo "Hello"<CR>', {silent = true, noremap = true}},
    { 'n', 's',           '<NOP>',   {} },
    { '', '<M-x>', ':', {}},
    { 'n', ';',           ':',       {} },
    { 'v', ';',           ':',       {} },
    { 'n', '+',           '<C-a>',   { noremap = true } },
    { 'n', '_',           '<C-x>',   { noremap = true } },
    { 'n', ',',           '@q',      { noremap = true } },
    { 'n', 'U',           '<C-r>',   { noremap = true } },

    -- Movement fast
    { 'n', 'K', '5k', { noremap = true } },
    { 'n', 'J', '5j', { noremap = true } },
    { 'n', 'gh', '0', { noremap = true } },
    { 'n', 'gl', '$', { noremap = true } },
    { 'n', 'ge', 'G', { noremap = true } },
    { '', 'gs', '^', { noremap = true } },
    { '', '<Space><Space>', '<Esc>/<++><CR>:nohlsearch<CR>"_c4l', {noremap = true} },

    --{ 'n', '\\',          ':set nohlsearch!<CR>', { noremap = true } },
    { 'n', '<Space><CR>',          ':set nohlsearch!<CR>', { noremap = true } },

    -- 快速删除
    { 'n', '<BS>',        '"_ciw',   { noremap = true } },
    { 'i', '<C-h>',       'col(".") == col("$") ? \'<Esc>"_db"_xa\' : \'<Esc>"_db"_xi\'', { noremap = true, expr = true } },

    -- ,打断
    { 'n', '<C-j>',       'f,a<CR><Esc>', { noremap = true } },
    { 'i', '<C-j>',       '<Esc>f,a<CR>', { noremap = true } },

    -- Insert mode movement
    { 'i', '<C-a>',       '<Home>',  { noremap = true } },
    { 'i', '<C-e>',       '<End>',  { noremap = true } },
    { 'i', '<C-p>',       '<Up>',  { noremap = true } },
    { 'i', '<C-n>',       '<Down>',  { noremap = true } },
    { 'i', '<C-b>',       '<Left>',  { noremap = true } },
    { 'i', '<C-f>',       '<Right>',  { noremap = true } },

    -- Command-line mode
    { 'c', '<C-a>',       '<Home>',  { noremap = true } },
    { 'c', '<C-e>',       '<End>',   { noremap = true } },
    { 'c', '<C-b>',       '<Left>',  { noremap = true } },
    { 'c', '<C-f>',       '<Right>', { noremap = true } },
    --{ 'c', '<Up>',        '<C-p>',   { noremap = true } },
    --{ 'c', '<Down>',      '<C-n>',   { noremap = true } },

    -- c-s = :%s/
    { 'n', '<C-s>',       ':<c-u>%s/\\v//gc<left><left><left><left>', { noremap = true } },
    { 'v', '<C-s>',             ':s/\\v//gc<left><left><left><left>', { noremap = true } },

    -- Only change text
    { 'v', '<BS>',        '"_d',     { noremap = true } },
    { 'n', 'x',           '"_x',     { noremap = true } },
    { 'v', 'x',           '"_x',     { noremap = true } },
    { 'n', 'Y',           'y$',      { noremap = true } },
    { 'v', 'c',           '"_c',     { noremap = true } },
    { 'v', 'p',           'pgvy',    { noremap = true } },
    { 'v', 'P',           'Pgvy',    { noremap = true } },

    -- S 保存 Q 退出
    --{ 'n', 'S',           ':call v:lua.MagicSave()<cr>', { noremap = true, silent = true } },
    --{ 'v', 'S',           ':call v:lua.MagicSave()<cr>', { noremap = true, silent = true } },
    --{ 'n', 'Q',           ':q!<cr>', { noremap = true, silent = true } },
    { 'n', 'S',           ':w<CR>', { noremap = true, silent = true } },
    { 'n', 'Q',           ':q<CR>', { noremap = true, silent = true } },
    { 'n', '<Space>wi',   ':wq<CR>', { noremap = true, silent = true } },
    { 'n', 'si',          ':wq<CR>', { noremap = true, silent = true } },
    { 'n', 'su',          ':update<CR>', { noremap = true, silent = true } },
    { 'i', 'kj',          '<Esc>', { noremap = true, silent = true } },

    -- VISUAL SELECT 模式 s-tab tab 左右缩进
    { 'v', '<',           '<gv',     { noremap = true } },
    { 'v', '>',           '>gv',     { noremap = true } },
    { 'v', '<S-tab>',     '<gv',     { noremap = true } },
    { 'v', '<Tab>',       '>gv',     { noremap = true } },

    -- 重写 Shift + 左右
    { 'v', '<S-Right>',   'e',       { noremap = true } },
    { 'i', '<S-Right>',   '<esc>ea', { noremap = true } },

    -- SHIFT + 方向 选择文本
    { 'i', '<S-Up>',      '<Esc>vk', { noremap = true } },
    { 'i', '<S-Down>',    '<Esc>vj', { noremap = true } },
    { 'n', '<S-Up>',      'Vk',      { noremap = true } },
    { 'n', '<S-Down>',    'Vj',      { noremap = true } },
    { 'v', '<S-Up>',      'k',       { noremap = true } },
    { 'v', '<S-Down>',    'j',       { noremap = true } },
    { 'n', '<S-Left>',    '<left>vh',{ noremap = true } },
    { 'n', '<S-Right>',   'vl',      { noremap = true } },

    -- CTRL SHIFT + 方向 快速跳转
    { 'i', '<c-s-up>',    '<up><up><up><up><up><up><up><up><up><up>', { noremap = true, silent = true } },
    { 'i', '<c-s-down>',  '<down><down><down><down><down><down><down><down><down><down>', { noremap = true, silent = true } },
    { 'i', '<c-s-left>',  '<home>',  { noremap = true, silent = true } },
    { 'i', '<c-s-right>', '<end>',   { noremap = true, silent = true } },
    { 'n', '<c-s-up>',    '10k',     { noremap = true } },
    { 'n', '<c-s-down>',  '10j',     { noremap = true } },
    { 'n', '<c-s-left>',  '^',       { noremap = true } },
    { 'n', '<c-s-right>', '$',       { noremap = true } },
    { 'v', '<c-s-up>',    '10k',     { noremap = true } },
    { 'v', '<c-s-down>',  '10j',     { noremap = true } },
    { 'v', '<c-s-left>',  '^',       { noremap = true } },
    { 'v', '<c-s-right>', '$h',      { noremap = true } },

    -- 选中全文 选中 { 复制全文
    { 'n', '<Space>wa',       'ggVG',    { noremap = true } },
    { 'n', '<m-s>',       'vi{',     { noremap = true } },

    -- emacs风格快捷键 清空一行
    { 'n', '<C-u>',       'cc<Esc>', { noremap = true } },
    { 'i', '<C-u>',       '<Esc>cc', { noremap = true } },
    { 'i', '<C-a>',       '<Esc>I',  { noremap = true } },
    { 'i', '<C-e>',       '<Esc>A',  { noremap = true } },

    -- Alt + 上 下移动行
    { 'n', '<M-Up>',      ':m .-2<CR>',       { noremap = true, silent = true } },
    { 'n', '<M-Down>',    ':m .+1<CR>',       { noremap = true, silent = true } },
    { 'i', '<M-Up>',      '<Esc>:m .-2<CR>i', { noremap = true, silent = true } },
    { 'i', '<M-Down>',    '<Esc>:m .+1<CR>i', { noremap = true, silent = true } },
    { 'v', '<M-Up>',      ":m '<-2<CR>gv",    { noremap = true, silent = true } },
    { 'v', '<M-Down>',    ":m '>+1<CR>gv",    { noremap = true, silent = true } },

    -- alt + key 操作
    { 'i', '<M-d>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<M-r>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<M-o>',       '<Esc>o',           { noremap = true } },
    { 'i', '<M-O>',       '<Esc>O',           { noremap = true } },
    { 'n', '<M-d>',       '"_diw',            { noremap = true } },
    { 'n', '<M-r>',       '"_ciw',            { noremap = true } },

    -- Windows: sp 上下窗口 sv 左右分屏 sc 关闭当前 so 关闭其他
    { 'n', 'sv',          ':vsp<CR><C-w>w',   { noremap = true } },
    { 'n', 'sp',          ':sp<CR><C-w>w',    { noremap = true } },
    { 'n', 'sc',          ':close<CR>',       { noremap = true } },
    { 'n', 'so',          ':only<CR>',        { noremap = true } },
    { 'n', 'sh',          '<C-w>h',           { noremap = true } },
    { 'n', 'sj',          '<C-w>j',           { noremap = true } },
    { 'n', 'sk',          '<C-w>k',           { noremap = true } },
    { 'n', 'sl',          '<C-w>l',           { noremap = true } },
    { 'n', 's<Left>',     '<C-w>h',           { noremap = true } },
    { 'n', 's<Down>',     '<C-w>j',           { noremap = true } },
    { 'n', 's<Up>',       '<C-w>k',           { noremap = true } },
    { 'n', 's<Right>',    '<C-w>l',           { noremap = true } },
    { 'n', 'sn',          '<C-w>w',           { noremap = true } },
    { 'n', 's=',          '<C-w>=',           { noremap = true } },
    { 'n', '<M-.>',       "winnr() <= winnr('$') - winnr() ? '<C-w>10>' : '<C-w>10<'", { noremap = true, expr = true } },
    { 'n', '<M-,>',       "winnr() <= winnr('$') - winnr() ? '<C-w>10<' : '<C-w>10>'", { noremap = true, expr = true } },

    -- Buffers
    { 'n', 'W',           ':bw<CR>',          { noremap = true, silent = true } },
    { 'n', 'ss',          ':bn<CR>',          { noremap = true, silent = true } },
    { 'n', 'sf',          ':bp<CR>',          { noremap = true, silent = true } },
    { 'n', '<M-Left>',    ':bp<CR>',          { noremap = true, silent = true } },
    { 'n', '<M-Right>',   ':bn<CR>',          { noremap = true, silent = true } },
    { 'v', '<M-Left>',    '<Esc>:bp<CR>',     { noremap = true, silent = true } },
    { 'v', '<M-Right>',   '<Esc>:bn<CR>',     { noremap = true, silent = true } },
    { 'i', '<M-Left>',    '<Esc>:bp<CR>',     { noremap = true, silent = true } },
    { 'i', '<M-Right>',   '<Esc>:bn<CR>',     { noremap = true, silent = true } },

    -- tt 打开一个10行大小的终端
    { 'n', 'tt',          ':below 10sp | term<CR>a', { noremap = true, silent = true } },

    -- 切换是否 wrap
    { 'n', '\\w',         "&wrap == 1 ? ':set nowrap<CR>' : ':set wrap<CR>'", { noremap = true, expr = true } },

    -- 折叠
    { 'n', '-',           "za", { noremap = true, silent = true } },
    { 'v', '-',           ':call v:lua.MagicFold()<CR>', { noremap = true, silent = true } },

    -- Tab 行首行尾循环跳转
    { 'n', '<Tab>',     ':call v:lua.MagicMove()<CR>', { noremap = true, silent = true } },
    { 'n', '0',           '%', { noremap = true } },
    { 'v', '0',           '%', { noremap = true } },

    -- 驼峰转换
    { 'v', 'T',           ':call v:lua.MagicToggleHump(v:true)<CR>', { noremap = true, silent = true } },
    { 'v', 't',           ':call v:lua.MagicToggleHump(v:false)<CR>', { noremap = true, silent = true } },
})

-- 光标在 $ 0 ^ 依次跳转
function MagicMove()
    local first = 1
    local head = #G.fn.getline('.') - #G.fn.substitute(G.fn.getline('.'), '^\\s*', '', 'G') + 1
    local before = G.fn.col('.')
    G.fn.execute(before == first and first ~= head and 'norm! ^' or 'norm! $')
    local after = G.fn.col('.')
    if before == after then
        G.fn.execute('norm! 0')
    end
end

-- 1 当目录不存在时 先创建目录, 2 当前文件是acwrite时, 用sudo保存
function MagicSave()
    if G.fn.empty(G.fn.glob(G.fn.expand('%:p:h'))) then G.fn.system('mkdir -p ' .. G.fn.expand('%:p:h')) end
    if G.o.buftype == 'acwrite' then
        G.fn.execute('w !sudo tee > /dev/null %')
    else
        G.fn.execute('w')
    end
end

-- 驼峰转换 MagicToggleHump(true) 首字母大写 MagicToggleHump(false) 首字母小写
function MagicToggleHump(upperCase)
    G.fn.execute('normal! gv"tx')
    local w = G.fn.getreg('t')
    local toHump = w:find('_') ~= nil
    if toHump then
        w = w:gsub('_(%w)', function(c) return c:upper() end)
    else
        w = w:gsub('(%u)', function(c) return '_' .. c:lower() end)
    end
    if w:sub(1, 1) == '_' then w = w:sub(2) end
    if upperCase then w = w:sub(1,1):upper() .. w:sub(2) end
    G.fn.setreg('t', w)
    G.fn.execute('normal! "tP')
end

-- 折叠(限制最大折叠层数 1)
function MagicFold()
    local max = 1
    if G.fn.foldlevel("'<") > 0 then G.fn.execute("normal! '<zd") end
    if G.fn.foldlevel("'>") > 0 then G.fn.execute("normal! '>zd") end
    G.fn.execute('normal! gvzf')
end
