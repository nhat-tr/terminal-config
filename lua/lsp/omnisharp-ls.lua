local pid = vim.fn.getpid()
local omnisharp_bin = "/omnisharp-vim/omnisharp-roslyn/OmniSharp.exe"
local cmd = {};
if vim.fn.has('win32') == 1 then
  cmd = {DATA_PATH .. omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }
else 
  cmd = {"mono", DATA_PATH .. omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }
end

require'lspconfig'.omnisharp.setup{
    cmd = cmd,
    on_attach = require'lsp'.tsserver_on_attach,
    root_dir = require('lspconfig/util').root_pattern("*.sln", ".git")
}
