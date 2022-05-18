-- 用于各种文件的编码
vim.o.encoding = "UTF-8"
-- 写入文件时的编码
vim.o.fileencoding = "UTF-8"
-- 移动光标时，上下方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 行号
vim.o.number = true
-- 高亮所在行
vim.o.cursorline = true
-- 高亮所在列
-- vim.o.cursorcolumn = true
-- 显示左侧图标指示列
vim.o.signcolumn = "yes"
-- 右侧参考线，用于提醒自己代码不要超过这个范围
-- vim.o.colorcolumn = "80"
-- >> << 缩进的空格
vim.o.shiftwidth = 2
-- tab替换为空格
vim.o.expandtab = true
-- tab键替换为2个空格
vim.o.tabstop = 2
-- 自动缩进
-- vim.o.smartindent = true
vim.o.autoindent = true
-- 搜索时大小写不敏感
vim.o.ignorecase = true
-- 包含大写时，大小写敏感
vim.o.smartcase = true
-- 搜索时高亮
vim.o.hlsearch = false
-- 文件被外部程序修改时，自动加载
vim.o.autoread = true
-- 禁止折行
vim.o.wrap = false
-- 新窗口从下方或者右方出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中
vim.o.completeopt = "menu,menuone,noselect,noinsert"
-- 透明背景
vim.g.background_transparency = false
-- 映射leader
vim.g.mapleader = ";"
