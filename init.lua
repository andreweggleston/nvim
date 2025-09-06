-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


_G.theme = "paradise"

require("config.options")
require("config.keybinds")
require("config.lazy")
require("config.ui")

-- Prefer LSP folding if client supports it. Allows to fold comments and more
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    if client:supports_method('textDocument/foldingRange') then
      local win = vim.api.nvim_get_current_win()
      vim.wo[win][0].foldexpr = 'v:lua.vim.lsp.foldexpr()'
    end
  end,
})
