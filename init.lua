-- General mappings
require('plugins')
require('nv-globals')
require('nv-utils')
vim.cmd('luafile ~/.config/nvim/nv-settings.lua')
require('nv-autocommands')
-- require('config')
require('settings')
require('keymappings')
require('colorscheme')

-- Plugins
require('nv-compe')
require('nv-colorizer')
require('nv-nvimtree')
require('nv-treesitter')
require('nv-barbar')
require('nv-quickscope')
require('nv-gitsigns')
require('nv-autopairs')
require('nv-comment')
require('nv-rnvimr')
require('nv-telescope')
require('nv-floaterm')
require('nv-vim-rooter')
require('nv-matchup')
require('nv-lspkind')
--require('nv-numb')
require('nv-hop')
require('nv-gitblame')
require('nv-nvim-peekup')
require('nv-lightbulb')
require('nv-indentline')
require('nv-bookmark')
require('nv-dependency')
-- require('nv-lspinstall')

-- Which Key (Hope to replace with Lua plugin someday)
vim.cmd('source ~/.config/nvim/vimscript/nv-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')

-- LSP
require('lsp')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.js-ts-ls')
require('lsp.python-ls')
require('lsp.json-ls')
require('lsp.yaml-ls')
require('lsp.vim-ls')
require('lsp.graphql-ls')
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.html-ls')
require('lsp.omnisharp-ls')
-- vim.lsp.callbacks["textDocument/publishDiagnostics"] = function() end
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = nil
